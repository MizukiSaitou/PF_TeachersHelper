class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name,          null: false
      t.string :name_kana,     null: false
      t.string :grade,         null: false
      t.string :school,        null: false
      t.string :subject,       null: false
      t.integer :gender,       null: false
      t.integer :phone_number, null: false
      t.boolean :is_deleted,   null: false, default: false

      t.timestamps
    end
  end
end
