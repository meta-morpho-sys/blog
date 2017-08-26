class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Article.new(whitelist_params)

    @article.save
    redirect_to @article
  end

  private

  def whitelist_params
    params.require(:article).permit(:title, :text)
  end
end
