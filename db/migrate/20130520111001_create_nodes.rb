class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :path
      t.string :atcode
      t.string :rmclass
      t.string :txt_value
      t.integer :int_value
      t.float :flt_value

      t.timestamps
    end
  end
end
