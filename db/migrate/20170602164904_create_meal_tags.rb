class CreateMealTags < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_tags do |t|
      t.integer :meal_id
      t.integer :tag_id

      t.timestamps

    end
  end
end
