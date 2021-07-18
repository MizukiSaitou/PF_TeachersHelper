class LessonsController < ApplicationController

  def index
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
    # 開始時間の検索
    @shifts = Shift.where('start_at >= ? AND start_at < ?', f_params[:start_at].in_time_zone, (f_params[:start_at].to_time + 60).in_time_zone) if f_params[:start_at].present?
    if @shifts.present?
      @shift_teacher_ids = []
      @shifts.each do |shift|
        #シフト登録されているteacherのidを配列で@shift_teacher_idsに格納
        @shift_teacher_ids << shift.teacher.id
      end
     # teacherに紐づく科目の検索
      @subject_teachers = SubjectTeacher.where(subject_id: f_params[:subject]) if f_params[:subject].present?
      #teacherのidを定義
      @subject_teacher_ids = @subject_teachers.map(&:teacher_id)
       #シフトと科目の2つの条件を絞り込む
      @teacher_ids = (@shift_teacher_ids + @subject_teacher_ids).flatten
      #重複を回避する
      @teacher_ids.select{ |t| @teacher_ids.count(t) > 1 }.uniq
      @teachers = Teacher.where(id: @teacher_ids)
    end
    respond_to do |format|
      format.html #htmlを読み込んであげないとエラーが出るのでしっかりと記述
      format.json {render json: @teachers}
    end
  end

# def search
#   @subject_teachers = SubjectTeacher.where('subject_id LIKE(?)', "%#{params[:keyword]}%")
#   respond_to do |format|
#     format.html #htmlを読み込んであげないとエラーが出るのでしっかりと記述
#     format.json
#   end
# end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
       redirect_to lessons_path
    else
       render :new
    end
  end



  private

  def lesson_params
    params.require(:lesson).permit(:student_id, :teacher_id, :subject_id, :start_at)
  end

end
