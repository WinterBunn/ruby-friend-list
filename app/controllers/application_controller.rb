class ApplicationController < ActionController::Base
    #makes it available to the helpers, wich is used for the views, and this is used for all controllers
    helper_method :current_user, :logged_in?

    def current_user
        #if we have @current_user, we return @current_user, if not we look for it and save it in current user (||=)
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        #makes current user into a boolean
        !!current_user
      end
end
