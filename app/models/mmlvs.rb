class Mmlvs < ActiveRecord::Base
  has_many :vital_signs

  def sbp
    find_scoped_type('Systolic Blood Pressure')
  end

  def dbp
    find_scoped_type('Diastolic Blood Pressure')
  end

  def pulse
    find_scoped_type('Pulse Rate')
  end

  def bt
    find_scoped_type('Body Temperature')
  end

  def save
    vital_signs.each do |vs|
      vs.save
    end
    super
  end

  def update(params)
    VitalSign.create(type: 'Systolic Blood Pressure', val: params[:sbp], unit: 'mmHg', mmlvs_id: self.id)
    VitalSign.create(type: 'Diastolic Blood Pressure', val: params[:dbp], unit: 'mmHg',mmlvs_id: self.id)
    VitalSign.create(type: 'Pulse Rate', val: params[:pulse], unit: '/min',mmlvs_id: :id)
    VitalSign.create(type: 'Body Temperature', val: params[:bt], unit: 'centigrade',mmlvs_id: self.id)
  end

  private
  def find_scoped_type(arg)
    vital_signs.select {|vs| vs.type == arg}.first
  end
end
