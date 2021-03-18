class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render :index
  end

  def new
    @tag = Tag.new
    render :new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:notice] = "Tag successfully added!"
      redirect_to tags_path
    else
      flash[:notice] = "Tag not added. This tag already exists!"
      redirect_to new_tag_path
    end
  end

  def edit
    @tag = Tag.find(params[:id])
    render :edit
  end

  def show
    @tag = Tag.find(params[:id])
    render :show
  end

  def update
    @tag= Tag.find(params[:id])
    if @tag.update(tag_params)
      flash[:notice] = "Tag successfully updated!"
      redirect_to tags_path
    else
      flash[:notice] = "This tag is already in use!"
      redirect_to edit_tag_path
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "Tag deleted!"
    redirect_to tags_path
  end

  private
    def tag_params
      params.require(:tag).permit(:tag)
    end
end
