class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        #debugger
        if @user.save
            puts "Saved"
            flash[:notice] = "Welcome to the page"
            redirect_to articles_path
        else
            render :action => :new
        end
    end

    private 
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end