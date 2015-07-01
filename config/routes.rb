Rails.application.routes.draw do
  devise_for :users
  resources :people do
    resources :facts
  end

  root 'people#index'

end
