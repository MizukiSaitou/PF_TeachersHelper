class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name,          null: false
      t.string :name_kana,     null: false
      t.string :grade,         null: false
      t.string :university,    null: false
      t.string :undergraduate
      t.string :subject,       null: false
      t.string :gender,        null: false
      t.integer :phone_number, null: false
      t.integer :capacity,     null: false
      t.boolean :is_deleted,   null: false, default: false

      t.timestamps
    end
  end
end
