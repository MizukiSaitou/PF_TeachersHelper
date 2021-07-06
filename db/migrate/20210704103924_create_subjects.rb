class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.integer :subject_student_id, null: false
      t.integer :subject_teacher_id, null: false
      t.integer :category_id,        null: false

      t.timestamps
    end
  end
end
