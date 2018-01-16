class MaterialsController < ApplicationController
  def index
    @materials = Material.all
  end

  def create
    current_user.materials.create(params.require(:material).permit(:title, :type, :qty))

    flash[:notice] = "successfully created"
    redirect_to "/"
  end

  def new
    @material = Material.new
  end

  def edit

  end

  def show
    @material = Material.find(params[:id])
    @photo_type = "material"

  end

  def update

  end





end
