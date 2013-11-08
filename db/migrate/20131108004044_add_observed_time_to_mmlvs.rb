class AddObservedTimeToMmlvs < ActiveRecord::Migration
  def change
    add_column :mmlvs, :observed_time, :datetime
  end
end
