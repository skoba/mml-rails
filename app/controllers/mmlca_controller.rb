class MmlcaController < ApplicationController
  before_action :set_mmlca, only: [:show, :edit, :update, :destroy]

  def overview
  end

  def specification
  end

  def table
  end

  def index
    @mmlca = Mmlca.all
  end

  def show
  end

  # GET /mmlca/new
  def new
    @mmlca = Mmlca.new
  end

  # GET /mmlca/1/edit
  def edit
  end

  # POST /mmlca
  # POST /mmlca.json
  def create
    @mmlca = Mmlca.new(mmlca_params)

    respond_to do |format|
      if @mmlca.save
        format.html { redirect_to @mmlca, notice: 'Mmlca was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mmlca }
      else
        format.html { render action: 'new' }
        format.json { render json: @mmlca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mmlca/1
  # PATCH/PUT /mmlca/1.json
  def update
    respond_to do |format|
      if @mmlca.update(mmlca_params)
        format.html { redirect_to @mmlca, notice: 'Mmlca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mmlca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mmlca/1
  # DELETE /mmlca/1.json
  def destroy
    @mmlca.destroy
    respond_to do |format|
      format.html { redirect_to mmlca_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mmlca
      @mmlca = Mmlca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mmlca_params
      params[:mmlca]
    end
end
