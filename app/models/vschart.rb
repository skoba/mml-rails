class Vschart
  include ActiveModel::Model
  attr_accessor :sbp, :dbp, :pulse, :bt
  def initialize(args = { })
    self.sbp = args[:sbp]
    self.dbp = args[:dbp]
    self.pulse = args[:pulse]
    self.bt = args[:bt]
  end
end
