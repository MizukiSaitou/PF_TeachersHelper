class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :student_id, null: false
      t.integer :working_id, null: false

      t.timestamps
    end
  end
end
