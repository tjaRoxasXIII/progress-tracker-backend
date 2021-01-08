class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.string :frequency
      t.date :start_date
      t.date :end_date
      t.boolean :is_complete

      t.timestamps
    end
  end
end
