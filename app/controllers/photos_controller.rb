class PhotosController < ApplicationController
  before_action :set_project, only: [:new, :create]

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.project = @project
    if @photo.save
      redirect_to project_path(@project)
    else
      flash[:alert] = @photo.errors.full_messages.join("\n")
      render :new, status: :unprocessable_entity # message d'erreur
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def photo_params
    params.require(:photo).permit(:title, :description, :image)
  end
end
