module Api
  class ArticlesController < ApplicationController
    def index
        articles = Article.all
        render json: {data: articles}
    end
    # 
    def show
       article = Article.find_by(id: params[:id]) 
       render json: {data: article}   
    end
    # 
    def create
        article = Article.new(article_params)
        if article.save
            render json:{data:article},status: :ok
        else
            render json:{status:"was not saved"}
            
        end
    end
    # 
    def destroy
        article = Article.find_by(id: params[:id])
        article.destroy
        render json:{msg:"article was destroyed",data:article}
    end
    # 
    def update
        article = Article.find_by(id: params[:id])
        if article.update(article_params)
            render json:{msg:"article was updated",data:article}
        else
            render json:{msg:"article WAS NOT updated"}
        end             
    end

    private
    def article_params
        params.permit(:title,:body)
    end
  end
end