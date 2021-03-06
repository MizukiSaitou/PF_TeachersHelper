class StudentsController < ApplicationController
  before_action :authenticate_user!

  require 'csv'

  def index
    @students = Student.search(params[:search]).order(:name).page(params[:page]).per(10)
      if params[:is_deleted].present?
        @students = @students.where(is_deleted: params[:is_deleted])
      end
    # respond_to はリクエストに応じた処理を行うメソッド
    # viewのlink_toでformatをcsvとして指定している
    # リンクを押すとsend_posts_csv(@students)の処理を行う
    respond_to do |format|
      format.html
      format.csv do |csv|
        send_posts_csv(@students)
      end
    end
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
      @subjects = Subject.all
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
      @subjects = Subject.all
      render :edit
    end
  end


  private

  def student_params
    params.require(:student).permit(:record_id, :name, :name_kana, :grade, :school, :phone_number, :gender, :notices, :is_deleted, subject_students_attributes: [:subject_id])
  end

  def send_posts_csv(students)
    # CSV.generateとは、対象データを自動的にCSV形式に変換してくれるCSVライブラリの一種
    csv_data = CSV.generate do |csv|
      # %w()は、空白で区切って配列を返す
      column_names = %w(生徒名 学校名 学年 在籍)
      # csv << column_namesは表の列に入る名前を定義
      csv << column_names
      # column_valuesに代入するカラム値を定義
      students.each do |student|
        column_values = [
          student.name,
          student.school,
          student.grade,
                ]
      # csv << column_valueshは表の行に入る値を定義
        csv << column_values
      end
    end
    # csv出力のファイル名を定義
    send_data(csv_data, filename: "生徒一覧.csv")
  end

end
