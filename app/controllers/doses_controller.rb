class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  def create
    @dose = Dose.new(set_params)
    if @dose.save
      redirect_to :action => 'index', :id => @dose.id
    else
      render :action => 'new'
    end
  end

  def new
    @dose = Dose.new
  end

  private

  def set_params
    params.require(:dose).permit(:description, :cocktail, :ingredient)
  end

end
