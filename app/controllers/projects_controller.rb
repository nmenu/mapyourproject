class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_project, only: %i[show edit update destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to projects_path
    else
      flash[:alert] = @project.errors.full_messages.join("\n")
      render :new, status: :unprocessable_entity # message d'erreur
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Your project was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_url, notice: "Your project was successfully destroyed."
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(
      :title, :description, :detail, :owner, :main_contractor, :year_completion,
      :duration, :budget, :labor_force, :latitude, :longitude
    )
  end
end
