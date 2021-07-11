class CreateWorkings < ActiveRecord::Migration[5.2]
  def change
    create_table :workings do |t|
      t.integer :teacher_id, null: false
      t.integer :subject_id, null: false
      t.date :day,           null: false
      t.time :time,          null: false
      t.integer :capacity,   null: false

      t.timestamps
    end
  end
end
