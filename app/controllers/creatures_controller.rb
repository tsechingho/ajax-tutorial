class CreaturesController < ApplicationController
  before_filter :load_creatures, only: [:index]
  before_filter :load_creature, only: [:show, :edit, :update, :destroy]
  before_filter :new_creature, only: [:new, :create]

  respond_to :html

  def index
    respond_with @creatures
  end

  def show
    respond_with @creature
  end

  def new
    respond_with @creature
  end

  def edit
  end

  def create
    @creature.save
    if @creature.valid?
      flash[:notice] = 'Creature was successfully created.'
    end
    respond_with @creature
  end

  def update
    @creature.update_attributes params[:creature]
    if @creature.valid?
      flash[:notice] = 'Creature was successfully updated.'
    end
    respond_with @creature
  end

  def destroy    
    @creature.destroy
    respond_with @creature, location: creatures_url
  end

  protected

  def load_creatures
    @creatures = Creature.all
  end

  def load_creature
    @creature = Creature.find params[:id]
  end

  def new_creature
    @creature = Creature.new params[:creature]
  end
end
