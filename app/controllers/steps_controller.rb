class StepsController < ApplicationController

  def index
  
  end

  def create

  end

  def new

  end

  def edit

  end

  def show
    @step = Step.find(params[:id])
    @photo_type = "step"

  end

  def update

  end

  # def new_plan_project
  #   @plan = Plan.find(params[:id])
  # end




end
