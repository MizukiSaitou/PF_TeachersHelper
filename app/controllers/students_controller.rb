class StudentsController < ApplicationController
  before_action :authenticate_user!

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
    @subjects = Subject.all
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      # 1つ目の空データの削除
    params[:student][:subject_ids].delete_at(0)
      # 元ある科目を削除
    @student.subject_students.destroy_all
    # 再度作り直す
    params[:student][:subject_ids].each do |id|
      @student.subject_students.create(subject_id: id)
    end
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
