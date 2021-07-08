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
    redirect_to record_path
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    @record.update(record_params)
    redirect_to record_path(@record)
  end

  private

  def record_params
    params.require(:record).permit(:student_id)
  end
end
