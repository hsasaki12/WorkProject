class CreateQuests < ActiveRecord::Migration[7.0]
  def change
    create_table :quests do |t|
      t.string :title
      t.text :description
      t.integer :category
      t.integer :difficulty
      t.integer :status
      t.integer :reward
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
