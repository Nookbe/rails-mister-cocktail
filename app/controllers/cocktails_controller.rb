class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail = Cocktail.new(set_params)
    if @cocktail.save
      redirect_to :action => 'show', :id => @cocktail.id
    else
      render :action => 'new'
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(set_params)
  end


  private

  def set_params
    params.require(:cocktail).permit(:name)
  end
end
