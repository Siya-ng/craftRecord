class MaterialsController < ApplicationController
  def index
    @material = Material.all
  end

  def create
    current_user.material.create(params.require(:material).permit(:title, :type, :qty))
  end

  def new
    @material = Material.new
  end

  def edit

  end

  def show

  end

  def update

  end





end
