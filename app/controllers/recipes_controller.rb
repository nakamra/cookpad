class RecipesController < ApplicationController
  before_action :set_default_value

  def new
  end

  def index
  end

  def post
  end

  def show
  end

  private
  def set_default_value
    @recipe = Recipe.new
  end
end
