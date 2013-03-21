class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :type
      t.datetime :action_datetime

      t.timestamps
    end
  end
end
