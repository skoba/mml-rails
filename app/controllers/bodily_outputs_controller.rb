class BodilyOutputsController < ApplicationController
  before_action :set_bodily_output, only: [:show, :edit, :update, :destroy]

  # GET /bodily_outputs
  # GET /bodily_outputs.json
  def index
    @bodily_outputs = BodilyOutput.all
  end

  # GET /bodily_outputs/1
  # GET /bodily_outputs/1.json
  def show
  end

  # GET /bodily_outputs/new
  def new
    @bodily_output = BodilyOutput.new
  end

  # GET /bodily_outputs/1/edit
  def edit
  end

  # POST /bodily_outputs
  # POST /bodily_outputs.json
  def create
    @bodily_output = BodilyOutput.new(bodily_output_params)

    respond_to do |format|
      if @bodily_output.save
        format.html { redirect_to @bodily_output, notice: 'Bodily output was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bodily_output }
      else
        format.html { render action: 'new' }
        format.json { render json: @bodily_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bodily_outputs/1
  # PATCH/PUT /bodily_outputs/1.json
  def update
    respond_to do |format|
      if @bodily_output.update(bodily_output_params)
        format.html { redirect_to @bodily_output, notice: 'Bodily output was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bodily_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodily_outputs/1
  # DELETE /bodily_outputs/1.json
  def destroy
    @bodily_output.destroy
    respond_to do |format|
      format.html { redirect_to bodily_outputs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bodily_output
      @bodily_output = BodilyOutput.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bodily_output_params
      params.require(:bodily_output).permit(:type, :volume, :unit, :color, :status)
    end
end
