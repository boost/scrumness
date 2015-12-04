class ReviewsController < ApplicationController
  before_filter :find_project, only: [:new, :create, :show] 
  before_filter :find_sprint,  only: [:new, :create, :show]

  def show
  	@review = @sprint.reviews.find(params[:id])
  end

	def new
		@review = @sprint.reviews.new
	end

	def create
		review = @sprint.reviews.create(review_params)
		redirect_to project_sprint_review_path(@project, @sprint, review)
	end

	def review_params
		params.require(:review).permit(:role, :comment, :score)
	end 
end
