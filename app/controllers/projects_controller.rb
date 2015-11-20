class ProjectsController < ApplicationController
	before_action :authenticate_user!

	def index
		@projects = current_user.projects
	end

	def new
		@project = Projects.new
	end

	def create
		current_user.projects.create(project_params)
		redirect_to projects_path
	end

	def project_params
		params.require(:project).permit(:name, :description)
	end
end
