class LessonsController < ApplicationController

  def index
    student_id = params[:student_id]
    @student = Student.find(student_id)
    @lessons = Lesson.all
  end

  def new
    f_params = params.permit(:student_id, :start_at, :subject)
    student_id = f_params[:student_id]
    @student = Student.find(student_id)
    @belong_subject_ids = @student.subjects.ids
    @subjects = Subject.where(id: @belong_subject_ids)
    @subject = Subject.all
    @lesson = Lesson.new
  end

  def edit
    f_params = params.permit(:student_id, :start_at, :subject)
    student_id = f_params[:student_id]
    @student = Student.find(student_id)
    @belong_subject_ids = @student.subjects.ids
    @subjects = Subject.where(id: @belong_subject_ids)
    @subject = Subject.all
    @lesson = Lesson.find(params[:id])
  end

  def search
    f_params = params.permit(:start_at, :subject)
      if f_params[:start_at].present? && f_params[:subject].present?
        @teachers = Teacher
        .joins(:shifts, :subject_teachers)
        .where('subject_teachers.subject_id = ?', f_params[:subject])
        .where('shifts.start_at >= ? AND shifts.start_at < ?', f_params[:start_at].in_time_zone, (f_params[:start_at].to_time + 60).in_time_zone)
      end

    respond_to do |format|
      format.html #htmlを読み込んであげないとエラーが出るのでしっかりと記述
      format.json {render json: @teachers}
    end

  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
       redirect_to lessons_path
    else
       render :new
    end
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
       redirect_to lessons_path
    else
       render :edit
    end
  end



  private

  def lesson_params
    params.require(:lesson).permit(:student_id, :teacher_id, :subject_id, :start_at)
  end

end
