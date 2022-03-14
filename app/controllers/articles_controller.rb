class ArticlesController < ApplicationController
    def show
        #params is where all the parameters are allocated
        #in order to make the variable available in all the app yo need to make it an instance with "@"
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.paginate(page: params[:page], per_page: 4)
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        @article.user = User.first
        if @article.save
            flash[:notice] = "Article was created successfully"
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Article was created successfully"
            #How this redirect works?
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end

    # Only allow a list of trusted parameters through.
    def article_params
        params.require(:article).permit(:title, :description)
    end
end