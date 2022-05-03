Rails.application.routes.draw do
  get 'static/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'xpage', to: 'static#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end
  # Defines the root path route ("/")
  root "static#index"


  namespace :v1, defaults: { format: 'json' } do
    get 'things', to: 'things#index'
  end

end
