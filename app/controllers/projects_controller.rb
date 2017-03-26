class ProjectsController < ApplicationController
  before_action :set_project, only: [:update]

  def index
    @projects = Project.all
  end

  def create
    @project = Project.new(project_params)
     @project.save
  end

  def update
     @project.update(project_params)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :todos)
    end
end
