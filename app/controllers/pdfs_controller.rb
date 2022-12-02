class PdfsController < ApplicationController
  before_action :set_project, only: %i[new create]

  def new
    @pdf = Pdf.new
  end

  def create
    @pdf = pdf.new(pdf_params)
    @pdf.project = @project
    if @pdf.save
      redirect_to project_path(@project)
    else
      flash[:alert] = @pdf.errors.full_messages.join("\n")
      render :new, status: :unprocessable_entity # message d'erreur
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def pdf_params
    params.require(:pdf).permit(:title, :description, :pdf_file)
  end
end
