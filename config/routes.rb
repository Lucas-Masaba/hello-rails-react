Rails.application.routes.draw do
  get 'static/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'static/index'
  # Defines the root path route ("/")
  root "static#index"


  namespace :api, defaults: { format: 'json' } do
    get 'greetings', to: 'greetings#index'
  end

end
