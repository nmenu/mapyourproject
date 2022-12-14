class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :ifc]
  before_action :set_project, only: %i[show edit ifc update destroy]

  def index
    @projects = Project.all
    @companies = User.where(projects: @projects).pluck(:company_name)
    @selected_company_name = params[:company_name]

    @projects = @projects.joins(:user).where(user: { company_name: params[:company_name] }) if params[:company_name]

    @markers = @projects.where.not(latitude: nil, longitude: nil).map do |project| #  @markers = Projects.geocoded
      {
        lat: project.latitude.to_f,
        lng: project.longitude.to_f,
        link: project_path(project),
        info_window: render_to_string(partial: "info_window", locals: { project: project})
      }
    end
  end

  def my_projects
    @projects = current_user.projects
  end

  def show
  end

  def ifc
    render layout: 'ifc'
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
      :title, :description, :detail, :details_01, :details_02, :details_03, :details_04, :owner, :main_contractor, :year_completion,
      :duration, :budget, :labor_force, :latitude, :longitude,:ifc_model, :youtube, :pdf, images: []
    )
  end
end
