class IntakesController < ApplicationController
  before_action :set_intake, only: [:show, :edit, :update, :destroy]

  # GET /intakes
  # GET /intakes.json
  def index
    @intakes = Intake.all
  end

  # GET /intakes/1
  # GET /intakes/1.json
  def show
  end

  # GET /intakes/new
  def new
    @intake = Intake.new
  end

  # GET /intakes/1/edit
  def edit
  end

  # POST /intakes
  # POST /intakes.json
  def create
    @intake = Intake.new(intake_params)

    respond_to do |format|
      if @intake.save
        format.html { redirect_to @intake, notice: 'Intake was successfully created.' }
        format.json { render action: 'show', status: :created, location: @intake }
      else
        format.html { render action: 'new' }
        format.json { render json: @intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intakes/1
  # PATCH/PUT /intakes/1.json
  def update
    respond_to do |format|
      if @intake.update(intake_params)
        format.html { redirect_to @intake, notice: 'Intake was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intakes/1
  # DELETE /intakes/1.json
  def destroy
    @intake.destroy
    respond_to do |format|
      format.html { redirect_to intakes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intake
      @intake = Intake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intake_params
      params.require(:intake).permit(:type, :volume, :unit)
    end
end
