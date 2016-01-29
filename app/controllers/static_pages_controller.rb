class StaticPagesController < ApplicationController
  def home
    redirect_to projects_path if current_user
  end

  def become_a_partner
  end

  def about
  end

  def contact
  end

  def terms
  end

  def base_template
  end

  def confirm_code
    @sprint = Sprint.find_by_token(params[:code])

    if @sprint
      if @sprint.voting_done?
        redirect_to new_project_sprint_review_path(@sprint.project, @sprint)
      else
        flash[:warning] = "Review has been expired"
        redirect_to root_path
      end
    else
      flash[:danger] = "This token dosent exist"      
      redirect_to root_path
    end
  end
end
