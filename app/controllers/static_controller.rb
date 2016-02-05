class StaticController < ApplicationController
  def home

  end

  def about
  	
  end

  def contact
  end
  
  def new
  	@user = User.new
  	
  end

end
