class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def first
    
    render 'show'
  end
  def second
   
     render 'show'
  end
  def third
    
    render 'show'
  end
  
  
  def show 
    if params['id'] == '1'
     @name= 'Barack Obama'
      @subname='Current President of United States'
    @picture= 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ_x4-61b1TFOi8Bh6irnlp0OzhOelyxmHvhDavQd9tKUtxCLZbGA'
    @text=  "Barack Obama was born on August 4, 1961, in Honolulu, Hawaii. He is the 44th and current president of the United States. He was a civil-rights lawyer and teacher before changeing to a political career. He was elected to the Illinois State Senate in 1996, serving from 1997 to 2004. He was elected to the U.S. presidency in 2008, and won re-election in 2012 against Republican challenger Mitt Romney. President Obama continues to enact policy changes in response to the issues of health care and economic crisis."
      @location= 'Washington D.C'
    elsif params['id'] == '2'
       @name="Steve Jobs"
      @subname='Apple Founder'
      @picture="http://www.appbite.com/wp-content/uploads/2011/10/steve-jobs.jpg"
      @text="Steve Paul Jobs was born in San Francisco, California, on February 24, 1955. Job's parents were two University of Wisconsin graduate students. Unfortunately they gave him up for adoption, leaving Jobs smart but directionless. Jobs experimented with different pursuits before starting Apple Computers with Steve Wozniak in 1976. Apple's revolutionary products include the iPod, iPhone and iPad. They are now seen as dictating the evolution of modern technology. He died in 2011, following a long battle with pancreatic cancer."
      @location='California'
    elsif params['id'] == '3'
     @name="David Heinemeier Hansson"
      @subname='Ruby on Rails Creator'
    @picture="http://david.heinemeierhansson.com/images/me.jpg"
    @text="David Heinemeier Hansson was born in 1979 in Copenhagen, Denmark. After graduation from Copenhagen Business School in 2005, he moved to Chicago, Illinois, USA. Hansson is a partner in 37signals, the company behind Basecamp, Highrise, Backpack Writeboard, and Ta-da List. 37signals runs a popular weblog at Signal vs Noise. In 2005, Hansson was recognized by Google and O'Reilly with the Hacker of the Year award for his creation and development of Ruby on Rails."
      @location='Chicago'
    end
    render 'show'
  end
  
end
