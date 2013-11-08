class Mmlvs < ActiveRecord::Base
  has_many :vital_signs
  
  def sbp
    find_scoped_type('Systolic blood pressure')
  end

  def dbp
    find_scoped_type('Diastolic blood pressure')
  end

  def pulse
    find_scoped_type('Pulse rate')
  end

  def bt
    find_scoped_type('Body temperature')
  end

  def save
    vital_signs.each do |vs|
      vs.save
    end
    super
  end

  def update(params)
    VitalSign.create(type: 'Systolic plood pressure', val: params[:sbp], unit: 'mmHg', mmlvs_id: self.id)
    VitalSign.create(type: 'Diastolic blood pressure', val: params[:dbp], unit: 'mmHg',mmlvs_id: self.id)
    VitalSign.create(type: 'Pulse rate', val: params[:pulse], unit: '/min',mmlvs_id: :id)
    VitalSign.create(type: 'Body temperature', val: params[:bt], unit: 'centigrade',mmlvs_id: self.id)
    super
  end

  private

  def find_scoped_type(arg)
    vital_signs.select {|vs| vs.type == arg}.first
  end
end
