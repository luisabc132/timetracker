Rails.application.routes.draw do
  get '/', to: 'site#home'
  get '/contact', to: 'site#contact'
  get 'say_name/:name', to: 'site#say_name'
  get '/calculator', to: 'site#calculator'
  post '/calculate', to: 'site#calculate'
  get '/calculate', to: 'site#calculate'
  get '/projects', to: 'projects#index'
  get '/projects/new', to: 'projects#new'
  post '/projects', to: 'projects#create'
  get '/projects/:id', to: 'projects#show'
  get '/projects/:project_id/time_entries', to: 'time_entries#index'
  get 'projects/:project_id/time_entries/new', to: 'time_entries#new'
  post 'projects/:project_id/time_entries/new', to: 'time_entries#create', as: :project_time_entries

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
