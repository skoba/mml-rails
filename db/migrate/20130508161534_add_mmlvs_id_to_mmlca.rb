class AddMmlvsIdToMmlca < ActiveRecord::Migration
  def change
    add_column :mmlca, :mmlvs_id, :integer
  end
end
