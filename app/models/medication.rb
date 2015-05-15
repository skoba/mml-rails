class Medication < ActiveRecord::Base
  belongs_to :prescription
end
