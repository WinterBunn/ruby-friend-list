class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def index
        @users = User.paginate(page: params[:page], per_page: 2)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "User Edited correclty"
            #How this redirect works?
            redirect_to @user
        else
            render 'edit'
        end
    end

    def show
        @user = User.find(params[:id])
        @articles = @user.articles.paginate(page: params[:page], per_page: 4)
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