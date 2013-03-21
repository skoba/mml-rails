class CreateIntakes < ActiveRecord::Migration
  def change
    create_table :intakes do |t|
      t.string :type
      t.float :volume
      t.string :unit

      t.timestamps
    end
  end
end
