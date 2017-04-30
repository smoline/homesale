Rails.application.routes.draw do

  post 'favorites/:homeId'           =>  'favorites#create'
  delete 'favorites/destroy/:homeId' =>  'favorites#destroy'

  get 'pages/landing'
  resources :homes
  root 'pages#landing'

  # get '/search' => 'homes#search'
  # get '/adv_search' => 'homes#adv_search'

  get    '/auth/:provider'          => 'omniauth#auth',    as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  mount Shrine::DownloadEndpoint => "/attachments"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
