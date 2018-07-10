Rails.application.routes.draw do
  get 'welcome/index'
  post 'welcome/count'
  resources :articles do
    resources :comments
  end
  root 'welcome#index'
end
