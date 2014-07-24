Rails.application.routes.draw do
  get '/rails/:id' => 'application#show'
end
