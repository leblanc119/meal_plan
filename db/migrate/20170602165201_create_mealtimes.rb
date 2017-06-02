class CreateMealtimes < ActiveRecord::Migration[5.0]
  def change
    create_table :mealtimes do |t|
      t.string :time

      t.timestamps

    end
  end
end
