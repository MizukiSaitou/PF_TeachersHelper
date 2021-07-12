class TeachersController < ApplicationController

  before_action :authenticate_user!, except: [:top]

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
    if @teacher.save
      redirect_to teacher_path(@teacher)
    else
      render :new
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
    @subjects = Subject.all
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update(teacher_params)
      # 1つ目の空データの削除
    params[:teacher][:subject_ids].delete_at(0)
      # 元ある科目を削除
    @teacher.subject_teachers.destroy_all
    # 再度作り直す
    params[:teacher][:subject_ids].each do |id|
      @teacher.subject_teachers.create(subject_id: id)
    end
      redirect_to teacher_path(@teacher)
    else
      render :edit
    end
  end


  private

  def teacher_params
    params.require(:teacher).permit(:name, :name_kana, :grade, :university, :undergraduate, :phone_number, :gender, :notices, :is_deleted, subject_teachers_attributes: [:subject_id])
  end
end
