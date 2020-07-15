class ApplicationController < ActionController::Base

    private 

    def current_user
        if session[:user_id].present?
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    helper_method(:user_user)
    # 'helper_method' makes a controller method 
    # available to all views (or templates)

    def user_sign_in? 
        current_user.present?
    end

    def authenticate_user!
        unless user_sign_in?
            flash[:danger] = "You must sign in or sign up first!"
            redirect_to new_session_path
        end
    end
end
