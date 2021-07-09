class RecordsController < ApplicationController

  def index
    student_id = params[:student_id]
    @student = Student.find(student_id)
    @records = @student.records
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    @record.student_id = @record.student.id
    @record.save
    redirect_to records_path
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    @record.update(record_params)
    redirect_to records_path(@record)
  end

  private

  def record_params
    params.require(:record).permit(:student_id, :test_name, :english_score, :math_score, :japanese_score, :science_score, :social_study_score,
                                   :ew_english_score, :cm_english_score, :math_a_score, :math_b_score, :math_c_score, :modern_writing_score,
                                   :classic_score, :chemistory_score, :physics_score, :biology_score, :japanese_history_score, :world_history_score,
                                   :geograpy_score, :semester_name, :english_academic_result, :math_academic_result, :japanese_academic_result,
                                   :science_academic_result, :sstudy_academic_result, :art_academic_result, :music_academic_result, :pe_academic_result,
                                   :te_academic_result, :ex_english_accademic_result, :cm_english_accademic_result, :math_a_accademic_result,
                                   :math_b_accademic_result, :math_c_accademic_result, :modern_writing_accademic_result, :classic_accademic_result,
                                   :chemistory_accademic_result, :physics_accademic_result, :biology_accademic_result, :japanese_history_accademic_result,
                                   :world_history_accademic_result, :geograpy_accademic_result)
  end
end
