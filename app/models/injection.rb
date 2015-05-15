class Injection < ActiveRecord::Base
  has_many :regimen

  def batch
    self.regimen.inject({}) do |rp, reg|
      if rp[reg.batch_no].nil?
        rp[reg.batch_no] = [reg]
      else
        rp[reg.batch_no] << reg
      end
      rp
    end
  end

end
