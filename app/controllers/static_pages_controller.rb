class StaticPagesController < ApplicationController
  def index
    
  end
  
  def landing_page
    @bet_tips = BetTip.all.paginate(page: params[:page], per_page: 3)
  end
  
 
  

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
  

end
