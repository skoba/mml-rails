class Prescription < ActiveRecord::Base
  has_many :medications

  def batch
    self.medications.inject({}) {|rp, med| rp[med.batchNo] = med; rp}
  end
end
