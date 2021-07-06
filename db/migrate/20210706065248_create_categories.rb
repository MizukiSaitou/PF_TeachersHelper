class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :subject_name, null: false

      t.timestamps
    end
  end
end
