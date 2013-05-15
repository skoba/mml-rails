class MmlvsController < ApplicationController
  before_action :set_mmlvs, only: [:show, :edit, :update, :destroy]

  def index
    @mmlvss = Mmlvs.all
  end

  def compare_vs_lb
  end

  def new
    @mmlvs = Mmlvs.new
  end

  def show
  end

  def edit
  end

  def destroy
    @mmlvs.destroy
    respond_to do |format|
      format.html { redirect_to mmlvs_index_url }
      format.json { head :no_content }
    end
  end

  def update
    respond_to do |format|
      if @mmlvs.update(mmlvs_params)
        format.html { redirect_to @mmlvs, notice: 'VitalSigns were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mmlvs.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @mmlvs = Mmlvs.create
    VitalSign.create(type: 'Systolic Blood Pressure', val: mmlvs_params[:sbp], unit: 'mmHg', mmlvs_id: @mmlvs.id)
    VitalSign.create(type: 'Diastolic Blood Pressure', val: mmlvs_params[:dbp], unit: 'mmHg',mmlvs_id: @mmlvs.id)
    VitalSign.create(type: 'Pulse Rate', val: mmlvs_params[:pulse], unit: '/min',mmlvs_id: @mmlvs.id)
    VitalSign.create(type: 'Body Temperature', val: mmlvs_params[:bt], unit: 'centigrade',mmlvs_id: @mmlvs.id)
    respond_to do |format|
      if @mmlvs.save
        format.html { redirect_to @mmlvs, notice: 'MMlvs was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mmlvs}
      else
        format.html { render action: 'new' }
        format.json { render json: @mmlvs.errors, status: :unprocessable_entity
 }
      end
    end
  end
   
  private
  def set_mmlvs
    @mmlvs = Mmlvs.find(params[:id])
  end

  def mmlvs_params
    params.require(:mmlvs).permit(:sbp, :dbp, :pulse, :bt)
  end
end
