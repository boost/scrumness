class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = current_user.projects
  end

  def show
    @project = Project.find(params[:id])
    @graph = [
              ["date",  1.0,  5.7,  1, "s2s", "all service to schools sprint"],
              ["date",  1.0,  5.7,  1, "s2s", "all service to schools sprint"],
              ["date",  1.0,  5.7,  1, "s2s", "all service to schools sprint"],
              ["date",  1.0,  5.7,  1, "s2s", "all service to schools sprint"],
              ["date",  1.0,  5.7,  1, "s2s", "all service to schools sprint"],
              ["date",  1.0,  5.7,  1, "s2s", "all service to schools sprint"]
            ]
  end

  def new
    @project = Project.new
  end

  def create
    current_user.projects.create(project_params)
    redirect_to projects_path
  end

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
