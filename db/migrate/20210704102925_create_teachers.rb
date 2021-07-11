class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name,          null: false
      t.string :name_kana,     null: false
      t.string :grade,         null: false
      t.string :university,    null: false
      t.string :undergraduate, null: false
      t.integer :gender, default: 0, null: false
      t.string :phone_number,  null: false
      t.text :notices
      t.boolean :is_deleted,   null: false, default: false

      t.timestamps
    end
  end
end
