class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  def show 
    @p = Person.find_by_id(params['id'])
    render 'show'
  end
  
  def new
  end
  
  def create
    p = Person.new
    p.name = params['name']
    p.title = params['title']
    p.picture = params['picture']
    p.text = params['text']
    p.location = params['location']
    p.save
    redirect_to "/user/#{p.id}"
  end
  
  
  def edit
    @p = Person.find_by_id(params['id'])
  end
  
  def update
    p = Person.find_by_id(params['id'])
    p.name = params['name']
    p.title = params ['title']
    p.picture = params ['picture']
    p.text = params ['text']
    p.location = params ['location']
    p.save
    redirect_to "/user/#{p.id}"
  end
  
  def destroy
    p = Person.find_by_id(params['id'])
    p.destroy
  end
  
  def index
    @p = Person.all
  end
  
end
