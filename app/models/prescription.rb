class Prescription < ActiveRecord::Base
  has_many :medications

  def batch
    self.medications.inject({}) do |rp, med|
      if rp[med.batchNo].nil?
        rp[med.batchNo] = [med]
      else
        rp[med.batchNo] << med
      end
      rp
    end
  end
end
