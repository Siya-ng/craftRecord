class PhotosController < ApplicationController

  def create
    @photo = @photographic.photos.new photo_params
    @photo.save
    redirect_to @photographic, notice: "your photo had been uploaded"
  end

  private

  def photo_params
    url = post.file
    params.require(:photo).permit(:comment, :url)
  end
end
