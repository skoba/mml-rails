class VitalSign < ActiveRecord::Base
  self.inheritance_column = :ar_type
  belongs_to :mmlvs

  scope :sbp, ->{ where type: 'Systolic Blood Pressure'}
#  default_scope { where published: true }
end
