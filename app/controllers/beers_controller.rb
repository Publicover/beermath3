class BeersController < ApplicationController

  def show
    @beer = Beer.find(params[:id])
  end

  def new
  end

  def create
    @beer = Beer.new(article_params)

    @beer.save
    redirect_to @beer
  end

  private
    def article_params
      params.require(:beer).permit(:name, :brewer, :price, :ounce, :calorie, :rating)
    end

end
