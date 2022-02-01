class ArticlesController < ApplicationController
    def show 
        #params is where all the parameters are allocated
        #in order to make the variable available in all the app yo need to make it an instance with "@"
        debugger
        @article = Article.find(params[:id])
    end
end