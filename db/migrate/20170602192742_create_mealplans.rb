class CreateMealplans < ActiveRecord::Migration[5.0]
  def change
    create_table :mealplans do |t|
      t.integer :mealtime_id
      t.integer :meal_id
      t.integer :plan_id

      t.timestamps

    end
  end
end
