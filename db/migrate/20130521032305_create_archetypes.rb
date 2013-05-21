class CreateArchetypes < ActiveRecord::Migration
  def change
    create_table :archetypes do |t|
      t.string :uid
      t.string :archetypeid

      t.timestamps
    end
  end
end
