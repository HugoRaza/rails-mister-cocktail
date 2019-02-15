class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]

  def index
    @doses = Dose.all
  end

  def show
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.ingredient = Ingredient.find(dose_params[:ingredient_id])

    @dose.save

    redirect_to cocktail_path(@cocktail)
  end

  def edit
  end

  def update
    @dose.update(dose_params)
    redirect_to doses_path(@dose)
  end

  def destroy
    @dose.destroy
    redirect_to doses_path(@dose)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
