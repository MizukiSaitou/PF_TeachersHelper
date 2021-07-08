class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :student_id
      t.string  :test_name
      t.integer :english_score
      t.integer :math_score
      t.integer :japanese_score
      t.integer :science_score
      t.integer :social_study_score
      t.integer :ew_english_score
      t.integer :cm_english_score
      t.integer :math_a_score
      t.integer :math_b_score
      t.integer :math_c_score
      t.integer :modern_writing_score
      t.integer :classic_score
      t.integer :chemistory_score
      t.integer :physics_score
      t.integer :biology_score
      t.integer :japanese_history_score
      t.integer :world_history_score
      t.integer :geograpy_score
      t.string  :semester_name
      t.integer :english_academic_result
      t.integer :math_academic_result
      t.integer :japanese_academic_result
      t.integer :science_academic_result
      t.integer :sstudy_academic_result
      t.integer :art_academic_result
      t.integer :music_academic_result
      t.integer :pe_academic_result
      t.integer :te_academic_result
      t.integer :ex_english_accademic_result
      t.integer :cm_english_accademic_result
      t.integer :math_a_accademic_result
      t.integer :math_b_accademic_result
      t.integer :math_c_accademic_result
      t.integer :modern_writing_accademic_result
      t.integer :classic_accademic_result
      t.integer :chemistory_accademic_result
      t.integer :physics_accademic_result
      t.integer :biology_accademic_result
      t.integer :japanese_history_accademic_result
      t.integer :world_history_accademic_result
      t.integer :geograpy_accademic_result
      
      
      t.timestamps
    end
  end
end

