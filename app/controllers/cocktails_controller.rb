class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @ingredient = Ingredient.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    respond_to do |format|
      if @cocktail.save
        format.html { redirect_to @cocktail, notice: 'cocktail was successfully created.' }
        format.json { render :show, status: :created, location: @cocktail }
      else
        format.html { render :new }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def cocktail_params
    paarams.require(:cocktail).permit(:name)

  end
end
