class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]
  before_action :set_ingredient, only: [:create]
  before_action :all_ingredients, only: [:new]

  def new
    # @cocktail in our `simple_form_for`
    # @ingredients : to list all ingredient and let user choose
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
      @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def all_ingredients
      @ingredients = Ingredient.all
  end

  def set_ingredient
      @ingredient = Ingredient.find(params["dose"]["ingredient_id"])
  end

  def dose_params
      params.require(:dose).permit(:description, :quantity)
  end

end
