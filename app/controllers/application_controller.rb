class ApplicationController < ActionController::Base
helper_method :current_user, :logged_in?
def current_user
    @current_user ||=User.find(session[:user_id]) if session[:user_id]
end
def  logged_in?  #it will return true or false using !! operator called bang bang operator 

!!current_user
end




end



def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end