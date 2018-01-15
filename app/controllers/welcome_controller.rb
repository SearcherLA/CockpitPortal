class WelcomeController < ApplicationController

  def index
    if user_signed_in?
      redirect_to :controller=>'teams', :action => 'index'
    end
  end

end
