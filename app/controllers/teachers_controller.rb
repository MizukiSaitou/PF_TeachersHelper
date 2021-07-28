class TeachersController < ApplicationController

  before_action :authenticate_user!

  def index
    @teachers = Teacher.order(:name).page(params[:page]).per(10).search(params[:search])
    respond_to do |format|
      format.html
      format.csv do |csv|
        send_posts_csv(@teachers)
      end
    end
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
      @subjects = Subject.all
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

  def send_posts_csv(teachers)

    csv_data = CSV.generate do |csv|

      column_names = %w(講師名 大学　学部名 学年)

      csv << column_names

      teachers.each do |teacher|
        column_values = [
          teacher.name,
          teacher.university,
          teacher.undergraduate,
          teacher.grade

                ]
        csv << column_values
      end
    end
    send_data(csv_data, filename: "講師一覧.csv")
  end

end
