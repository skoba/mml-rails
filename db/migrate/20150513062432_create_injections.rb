class CreateInjections < ActiveRecord::Migration
  def change
    create_table :injections do |t|

      t.timestamps null: false
    end
  end
end
