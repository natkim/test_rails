Rails.application.routes.draw do
  get '/rails/:id' => 'application#show'
  get '/rails/1' => 'application#first'
  get '/rails/2' => 'application#second'
  get '/rails/3' => 'application#third'
end
