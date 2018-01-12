class WelcomeController < ApplicationController

  def index
    if user_signed_in?
      redirect_to :controller=>'team', :action => 'index'
    end
  end

end
