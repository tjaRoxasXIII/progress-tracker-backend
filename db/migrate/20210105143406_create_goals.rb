class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :frequency
      t.integer :precent_complete
      t.boolean :is_complete
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end