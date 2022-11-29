class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to root_path
    else
      flash[:alert] = @project.errors.full_messages.join("\n")
      render :new, status: :unprocessable_entity # message d'erreur
    end
  end

  private

  def set_projects
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(
      :title, :description, :detail, :owner, :main_contractor, :year_completion,
      :duration, :budget, :labor_force, :latitude, :longitude
    )
  end
end
