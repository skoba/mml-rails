class AddArchetypeIdToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :archetype_id, :integer
  end
end
