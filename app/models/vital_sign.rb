class VitalSign < ActiveRecord::Base
  self.inheritance_column = :ar_type
  belongs_to :mmlvs

#  validates :val, numericality: {greater_than_or_equal_to: 0}
  scope :sbp, ->{ where type: 'Systolic blood pressure'}
#  default_scope { where published: true }
end
