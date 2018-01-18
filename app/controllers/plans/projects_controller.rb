class Plans::ProjectsController < ApplicationController

  def new
    @plan_project = Project.new
  end

  def create

    @plan = Plan.find(params[:plan_id])
    new_project = @plan.create_new_project(current_user)
    flash[:notice] = "successfully created"
    # redirect_to "/"

    redirect_to "/projects/#{new_project}"

  end
end
