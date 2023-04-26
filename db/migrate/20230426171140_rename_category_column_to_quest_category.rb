class RenameCategoryColumnToQuestCategory < ActiveRecord::Migration[6.1]
  def change
    rename_column :quests, :category, :quest_category
  end
end