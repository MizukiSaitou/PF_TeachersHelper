class TeachersController < ApplicationController

  def index
    @teachers = Teacher.order(:name).page(params[:page])
  end


  def show
    @teacher =Teacher.find(params[:id])
    @belong_subject_ids = @teacher.subjects.ids
    @subjects = Subject.where(id: @belong_subject_ids)
  end

  def new
    @teacher = Teacher.new
    @subjects = Subject.all
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.save
    redirect_to teacher_path(@teacher)
  end


  private

  def teacher_params
    params.require(:teacher).permit(:name, :name_kana, :grade, :university, :undergraduate, :phone_number, :gender, :notices, :is_deleted, subject_teachers_attributes: [:subject_id])
  end
end
