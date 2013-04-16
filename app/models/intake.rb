class Intake < ActiveRecord::Base
  self.inheritance_column = :ar_type
end
