# frozen_string_literal: true

# Class documentation
class CocktailsController < ApplicationController
  before_action :set_cocktails, only: %i[index new]

  def index; end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def set_cocktails
    @cocktails = Cocktail.all
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
