class HomeController < ApplicationController
  def index
    session[:cmd_nr] = 1;
    session[:cmd_order] = [1,2,3,4,5,6].shuffle
  end  
end
