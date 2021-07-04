class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :student_id,       null: false
      t.string :subject_name,      null: false
      t.integer :test_score,       null: false
      t.integer :academic_result,  null: false

      t.timestamps
    end
  end
end
