class ArticlesController < ApplicationController
    before_action :set_article, only: %i[ show edit update destroy]

    def index
        @articles = Article.all
    end

    def show
    end

    def new
        @article = Article.new
    end

    def edit
    end

    def update
        if @article.update(article_params)
            redirect_to @article
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            redirect_to @article, notice: "Article was successfully created."
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @article.destroy
        redirect_to articles_path, notice: "Article was successfully deleted."
    end

    private
    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.expect(article: [ :title, :text ])
    end
end
