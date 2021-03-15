Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get "/director/(:id)", to: "director#show", as: "director"
  # get "/director", to: "director#sad", as: "director_sad"
  # match "director/(:id)" => "director#sad"
end
