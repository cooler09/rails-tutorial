class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @count = 20
  end
  def count
    words = Word.new
    @count =  words.count(params['userWords'])
    #render plain: params.inspect
    #render '/welcome/index'
    redirect_to welcome_index_path
  end
end
