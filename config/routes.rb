Rails.application.routes.draw do
  resources :people do
    resources :facts
  end

  root 'people#index'

end
