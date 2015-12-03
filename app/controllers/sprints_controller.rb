class SprintsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_project, only: [:new, :create, :show] 

  def index
  end

  def show
    @sprint = @project.sprints.find(params[:id])
  end

  def new
    @sprint = @project.sprints.new
  end

  def create
    sprint = @project.sprints.create(sprint_params)
    redirect_to project_sprint_path(@project, sprint)
  end

  def sprint_params
    params.require(:sprint).permit(:votes)
  end  
end
