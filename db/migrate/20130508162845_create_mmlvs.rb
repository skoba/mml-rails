class CreateMmlvs < ActiveRecord::Migration
  def change
    create_table :mmlvs do |t|
      t.timestamps
    end
  end
end
