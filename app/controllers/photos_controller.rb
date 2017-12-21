class PhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_photo, only: [:edit, :update, :destroy, :show]

  def show
    @comments = Postcomment.where(photo_id: @photo.id)
    @images = Image.where(photo_id: @photo.id)
  end

  def index
    @photos = Photo.all
    @photos.each do |photo|
  end

  end

  def new
    @photo = Photo.new
  end

  def create
   params[:photo][:category_id] = params[:category_id]
   params[:photo][:photo] 
   @photo = Photo.create(photo_params)
    redirect_to photos_path
  end


private

  def photo_params
    params.require(:photo).permit(:category_id, :name, :photo)
  end

  def set_photo
@photo = Photo.find(params[:id])
end

end