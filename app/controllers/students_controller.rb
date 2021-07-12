class StudentsController < ApplicationController

  def index
    @students = Student.order(:name).page(params[:page])
  end


  def show
    @student = Student.find(params[:id])
    @belong_subject_ids = @student.subjects.ids
    @subjects = Subject.where(id: @belong_subject_ids)
    @record = @student.records
  end

  def new
    @student = Student.new
    @subjects = Subject.all
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
    @belong_subject_ids = @student.subjects.ids
    @subjects = Subject.all
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      redirect_to student_path(@student)
    else
      render :edit
    end
  end
  
  


  private

  def student_params
    params.require(:student).permit(:record_id, :name, :name_kana, :grade, :school, :phone_number, :gender, :notices, :is_deleted, subject_students_attributes: [:subject_id])
  end

end
