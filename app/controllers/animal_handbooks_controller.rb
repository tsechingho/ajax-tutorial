class AnimalHandbooksController < ApplicationController
  # GET /animal_handbooks
  # GET /animal_handbooks.json
  def index
    @animal_handbooks = AnimalHandbook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @animal_handbooks }
    end
  end

  # GET /animal_handbooks/1
  # GET /animal_handbooks/1.json
  def show
    @animal_handbook = AnimalHandbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @animal_handbook }
    end
  end

  # GET /animal_handbooks/new
  # GET /animal_handbooks/new.json
  def new
    @animal_handbook = AnimalHandbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @animal_handbook }
    end
  end

  # GET /animal_handbooks/1/edit
  def edit
    @animal_handbook = AnimalHandbook.find(params[:id])
  end

  # POST /animal_handbooks
  # POST /animal_handbooks.json
  def create
    @animal_handbook = AnimalHandbook.new(params[:animal_handbook])

    respond_to do |format|
      if @animal_handbook.save
        format.html { redirect_to @animal_handbook, notice: 'Animal handbook was successfully created.' }
        format.json { render json: @animal_handbook, status: :created, location: @animal_handbook }
      else
        format.html { render action: "new" }
        format.json { render json: @animal_handbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /animal_handbooks/1
  # PUT /animal_handbooks/1.json
  def update
    @animal_handbook = AnimalHandbook.find(params[:id])

    respond_to do |format|
      if @animal_handbook.update_attributes(params[:animal_handbook])
        format.html { redirect_to @animal_handbook, notice: 'Animal handbook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @animal_handbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animal_handbooks/1
  # DELETE /animal_handbooks/1.json
  def destroy
    @animal_handbook = AnimalHandbook.find(params[:id])
    @animal_handbook.destroy

    respond_to do |format|
      format.html { redirect_to animal_handbooks_url }
      format.json { head :no_content }
    end
  end
end
