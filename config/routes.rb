Rails.application.routes.draw do
  get 'pages/landing'

  resources :homes
  root 'pages#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/search' => 'homes#search'

  mount Shrine::DownloadEndpoint => "/attachments"
end
