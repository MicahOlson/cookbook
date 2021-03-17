class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render :index
  end

  def new
    @recipe = Recipe.new
    @tags = Tag.all
    render :new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      tag = Tag.find(params[:tag_selection].to_i)
      tag.recipes << @recipe
      flash[:notice] = "Recipe successfully added!"
      redirect_to recipes_path
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @tags = Tag.all
    render :edit
  end

  def show
    @recipe = Recipe.find(params[:id])
    render :show
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      tag = Tag.find(params[:tag_selection].to_i)
      tag.recipes << @recipe
      flash[:notice] = "Recipe successfully updated!"
      redirect_to recipes_path
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = "Recipe successfully deleted!"
    redirect_to recipes_path
  end

  private
    def recipe_params
      params.require(:recipe).permit(:title, :instruction_set, :ingredient_set)
    end
end
