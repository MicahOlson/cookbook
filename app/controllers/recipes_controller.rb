class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render :index
  end

  def home
    @recipes = Recipe.all
    @tags = Tag.all
    render :home
  end

  def new
    @recipe = Recipe.new
    @tags = Tag.all
    @recipe_tags = []
    render :new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      if params[:tag_selections]
        tag_array = params[:tag_selections]
        tag_array.each do |check_tags|
          tag = Tag.find(check_tags.to_i)
          @recipe.tags << tag
        end
      end
      flash[:notice] = "Recipe successfully added!"
      redirect_to recipes_path
    else
      flash[:notice] = "Recipe not added! Is this recipe already in the list?"
      redirect_to new_recipe_path
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @tags = Tag.all
    @recipe_tags = []
    @recipe.tags.each { |tag| @recipe_tags.push(tag.id) }
    render :edit
  end

  def show
    @recipe = Recipe.find(params[:id])
    render :show
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      @recipe_tags = []
      @recipe.tags.each { |tag| @recipe_tags.push(tag) }
      @recipe.tags.delete(@recipe_tags)
      if params[:tag_selections]
        tag_array = params[:tag_selections]
        tag_array.each do |check_tags|
          tag = Tag.find(check_tags.to_i)
          @recipe.tags << tag
        end
      end
      flash[:notice] = "Recipe successfully updated!"
      redirect_to recipe_path(@recipe)
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
