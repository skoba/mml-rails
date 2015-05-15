class RegimenController < ApplicationController
  before_action :set_regimen, only: [:show, :edit, :update, :destroy]

  # GET /regimen
  # GET /regimen.json
  def index
    @regimen = Regimen.all
  end

  # GET /regimen/1
  # GET /regimen/1.json
  def show
  end

  # GET /regimen/new
  def new
    @regimen = Regimen.new
  end

  # GET /regimen/1/edit
  def edit
  end

  # POST /regimen
  # POST /regimen.json
  def create
    @regimen = Regimen.new(regimen_params)

    respond_to do |format|
      if @regimen.save
        format.html { redirect_to @regimen, notice: 'Regimen was successfully created.' }
        format.json { render :show, status: :created, location: @regimen }
      else
        format.html { render :new }
        format.json { render json: @regimen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regimen/1
  # PATCH/PUT /regimen/1.json
  def update
    respond_to do |format|
      if @regimen.update(regimen_params)
        format.html { redirect_to @regimen, notice: 'Regimen was successfully updated.' }
        format.json { render :show, status: :ok, location: @regimen }
      else
        format.html { render :edit }
        format.json { render json: @regimen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regimen/1
  # DELETE /regimen/1.json
  def destroy
    @regimen.destroy
    respond_to do |format|
      format.html { redirect_to regimen_url, notice: 'Regimen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regimen
      @regimen = Regimen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regimen_params
      params.require(:regimen).permit(:injection_id, :name, :code, :dose, :dose_unit, :start, :end, :instruction, :route, :site, :delivery_method, :batch_no)
    end
end
