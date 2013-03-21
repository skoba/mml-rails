class CreateBodilyOutputs < ActiveRecord::Migration
  def change
    create_table :bodily_outputs do |t|
      t.string :type
      t.float :volume
      t.string :unit
      t.string :color
      t.string :status

      t.timestamps
    end
  end
end
