class CreaturePhotosController < ApplicationController
  before_filter :load_creature_photos, only: [:index]
  before_filter :load_creature_photo, only: [:show, :edit, :update, :destroy]
  before_filter :new_creature_photo, only: [:new, :create]

  respond_to :html

  def index
    respond_with @creature_photos
  end

  def show
    respond_with @creature_photo
  end

  def new
    respond_with @creature_photo
  end

  def edit
  end

  def create
    @creature_photo.save
    if @creature_photo.valid?
      flash[:notice] = 'Creature photo was successfully created.'
    end
    respond_with @creature_photo
  end

  def update
    @creature_photo.update_attributes params[:creature_photo]
    if @creature_photo.valid?
      flash[:notice] = 'Creature photo was successfully updated.'
    end
    respond_with @creature_photo
  end

  def destroy    
    @creature_photo.destroy
    respond_with @creature_photo, location: creature_photos_url
  end

  protected

  def load_creature_photos
    @creature_photos = CreaturePhoto.all
  end

  def load_creature_photo
    @creature_photo = CreaturePhoto.find params[:id]
  end

  def new_creature_photo
    @creature_photo = CreaturePhoto.new params[:creature_photo]
  end
end
