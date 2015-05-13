class InjectionsController < ApplicationController
  before_action :set_injection, only: [:show, :edit, :update, :destroy]

  # GET /injections
  # GET /injections.json
  def index
    @injections = Injection.all
  end

  # GET /injections/1
  # GET /injections/1.json
  def show
  end

  # GET /injections/new
  def new
    @injection = Injection.new
  end

  # GET /injections/1/edit
  def edit
  end

  # POST /injections
  # POST /injections.json
  def create
    @injection = Injection.new(injection_params)

    respond_to do |format|
      if @injection.save
        format.html { redirect_to @injection, notice: 'Injection was successfully created.' }
        format.json { render :show, status: :created, location: @injection }
      else
        format.html { render :new }
        format.json { render json: @injection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /injections/1
  # PATCH/PUT /injections/1.json
  def update
    respond_to do |format|
      if @injection.update(injection_params)
        format.html { redirect_to @injection, notice: 'Injection was successfully updated.' }
        format.json { render :show, status: :ok, location: @injection }
      else
        format.html { render :edit }
        format.json { render json: @injection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /injections/1
  # DELETE /injections/1.json
  def destroy
    @injection.destroy
    respond_to do |format|
      format.html { redirect_to injections_url, notice: 'Injection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_injection
      @injection = Injection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def injection_params
      params[:injection]
    end
end
