class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = if params[:term]
      Cocktail.where('name LIKE ?', "%#{params[:term]}%")
      else
        Cocktail.all
      end
  end

  def show
    @doses = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path(@cocktail)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path(@cocktail)
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :complete, :due_date, :term)
  end
end
