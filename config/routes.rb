Rails.application.routes.draw do
  #Creating
  get '/new_user' => 'application#new'
  get '/create_user' => 'application#create'
  
  #Reading
  get '/user/:id' => 'application#show'
  get '/users' => 'application#index'
  
  
  #Updating
  get '/user/:id/edit' => 'applicaiton#edit'
  get'/update_user/:id' => 'application#update'
  
  #Deleting
  get '/user/:id/destroy' => 'application#destroy'


end
