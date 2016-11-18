class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end


  def create

    article = Article.create(article_params)

if(article.nil?)
  render 'new'
else
  redirect_to articles_path
end

  end
  def new
    @article = Article.new
  end

  def show
@article = Article.find(params[:id])
@comment = Comment.new
  end

  def edit
    @article = Article.find(params[:id])
  end
  def update
    article = Article.find(params[:id])

    if (article.update(article_params).present?)
      redirect_to articles_path(params[:id])
    else
      render 'edit'
  end
end
def article_params
  params.require(:article).permit(:title,:content)

end
def destroy
  @article = Article.find(params[:id])
  @article.destroy

  redirect_to articles_path
end
end
