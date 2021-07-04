class CreateSubjectStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_students do |t|
      t.integer :student_id,  null: false
      t.integer :subject_id,  null: false

      t.timestamps
    end
  end
end
