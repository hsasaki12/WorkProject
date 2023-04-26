class RemovePublicFromQuests < ActiveRecord::Migration[7.0]
  def change
    remove_column :quests, :public, :boolean
  end
end
