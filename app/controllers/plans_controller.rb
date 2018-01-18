class PlansController < ApplicationController

  def index
    @plans = Plan.all
  end

  def create
    new_plan = current_user.plans.create(params.require(:plan).permit(:title, :category, :no_of_steps, :notes))

    flash[:notice] = "successfully created"
    redirect_to "/plans/#{new_plan.id}"
  end

  def new
    @plan = Plan.new
  end

  def edit

  end

  def show
    @plan = Plan.find(params[:id])
    @photo_type = "plan"

  end

  def update

  end

  # def new_plan_project
  #   @plan = Plan.find(params[:id])
  # end




end
