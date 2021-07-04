class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :subject_id, null: false
      t.date :day,           null: false
      t.time :time,          null: false

      t.timestamps
    end
  end
end
