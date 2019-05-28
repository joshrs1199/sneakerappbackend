Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# resources :sneakers, only: [:index, :create]

get '/sneakers', to: 'sneakers#index'

post '/sneakers', to: 'sneakers#create'

end
