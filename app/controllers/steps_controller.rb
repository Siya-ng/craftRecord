class StepsController < ApplicationController
  skip_before_action :verify_authenticity_token


  def index

  end

  def create

  end

  def new

  end

  def edit
    @step = Step.find(params[:id])
  end

  def show
    @step = Step.find(params[:id])
    @photo_type = "step"

  end

  def update
    @step = Step.find(params[:id])
    @step.changeStatus

  end

  # def new_plan_project
  #   @plan = Plan.find(params[:id])
  # end




end
