Rails.application.routes.draw do
  get '/', to: 'site#home'
  get '/contact', to: 'site#contact'
  get 'say_name/:name', to: 'site#say_name'
  get '/calculator', to: 'site#calculator'
  post '/calculate', to: 'site#calculate'
  get '/calculate', to: 'site#calculate'
  get '/projects', to: 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
