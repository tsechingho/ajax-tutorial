class AnimalHandbooksController < ApplicationController
  before_filter :load_animal_handbooks, only: [:index]
  before_filter :load_animal_handbook, only: [:show, :edit, :update, :destroy]
  before_filter :new_animal_handbook, only: [:new, :create]

  respond_to :html

  def index
    respond_with @animal_handbooks
  end

  def show
    respond_with @animal_handbook
  end

  def new
    respond_with @animal_handbook do |format|
      format.html { render 'new_modal', layout: false } if request.xhr?
    end
  end

  def edit
    render 'edit_modal', layout: false if request.xhr?
  end

  def create
    @animal_handbook.save
    if @animal_handbook.valid?
      flash[:notice] = 'Animal handbook was successfully created.'
    end
    respond_with @animal_handbook do |format|
      format.html {
        if @animal_handbook.valid?
          load_animal_handbooks
          render partial: 'table', locals: { animal_handbooks: @animal_handbooks }
        else
          render 'new_modal', layout: false
        end
      } if request.xhr?
    end
    flash.discard :notice if request.xhr?
  end

  def update
    @animal_handbook.update_attributes params[:animal_handbook]
    if @animal_handbook.valid?
      flash[:notice] = 'Animal handbook was successfully updated.'
    end
    respond_with @animal_handbook do |format|
      format.html {
        if @animal_handbook.valid?
          load_animal_handbooks
          render partial: 'table', locals: { animal_handbooks: @animal_handbooks }
        else
          render 'edit_modal', layout: false
        end
      } if request.xhr?
    end
    flash.discard :notice if request.xhr?
  end

  def destroy
    @animal_handbook.destroy
    respond_with @animal_handbook, location: animal_handbooks_url do |format|
      format.js { render nothing: true }
    end
  end

  protected

  def load_animal_handbooks
    @animal_handbooks = AnimalHandbook.all
  end

  def load_animal_handbook
    @animal_handbook = AnimalHandbook.find params[:id]
  end

  def new_animal_handbook
    @animal_handbook = AnimalHandbook.new params[:animal_handbook]
  end
end
