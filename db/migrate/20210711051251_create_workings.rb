class CreateWorkings < ActiveRecord::Migration[5.2]
  def change
    create_table :workings do |t|
      t.integer :teacher_id, null: false
      t.integer :subject_id, null: false
      t.datetime :start_at,  null: false
      t.datetime :end_at,    null: false

      t.timestamps
    end
  end
end
