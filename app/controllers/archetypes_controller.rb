class ArchetypesController < ApplicationController
  before_action :set_archetype, only: [:show, :edit, :update, :destroy]

  # GET /archetypes
  # GET /archetypes.json
  def index
    @archetypes = Archetype.all
  end

  # GET /archetypes/1
  # GET /archetypes/1.json
  def show
  end

  # GET /archetypes/new
  def new
    @archetype = Archetype.new
  end

  # GET /archetypes/1/edit
  def edit
  end

  # POST /archetypes
  # POST /archetypes.json
  def create
    @archetype = Archetype.new(archetype_params)

    respond_to do |format|
      if @archetype.save
        format.html { redirect_to @archetype, notice: 'Archetype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @archetype }
      else
        format.html { render action: 'new' }
        format.json { render json: @archetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archetypes/1
  # PATCH/PUT /archetypes/1.json
  def update
    respond_to do |format|
      if @archetype.update(archetype_params)
        format.html { redirect_to @archetype, notice: 'Archetype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @archetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archetypes/1
  # DELETE /archetypes/1.json
  def destroy
    @archetype.destroy
    respond_to do |format|
      format.html { redirect_to archetypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archetype
      @archetype = Archetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archetype_params
      params.require(:archetype).permit(:uid, :archetypeid)
    end
end
