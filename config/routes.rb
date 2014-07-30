Rails.application.routes.draw do
  #Creating
  get '/new_user' => 'application#new'
  get '/create_user' => 'application#create'
  
  #Reading
  get '/user/:id' => 'application#show'
  get '/users' => 'application#index'
  
  
  #Updating
  get '/user/:id/edit' => 'application#edit'
  get'/updeate_user/:id' => 'application#update'
  
  #Deleting
  get '/users/:id/destroy' => 'application#destroy'


end
