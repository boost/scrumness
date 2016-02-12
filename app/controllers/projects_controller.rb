class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: :show
  before_filter :find_project, only: [:edit, :update, :show, :destroy]

  def new
    @project = Project.new
  end

  def index
    @projects = current_user.projects
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    current_user.projects.create(project_params)
    redirect_to projects_path
  end

  def edit
  end

  def destroy
    @project.destroy
    flash[:success] = "Project Deleted"
    redirect_to projects_path
  end

  def update
    @project.update_attributes(project_params)
    render "show"
  end

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
