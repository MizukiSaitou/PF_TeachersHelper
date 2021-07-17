class LessonsController < ApplicationController

  def index
  end

  def new
    student_id = params[:student_id]
    @student = Student.find(student_id)
    @belong_subject_ids = @student.subjects.ids
    @subjects = Subject.where(id: @belong_subject_ids)
    @subject = Subject.all
    @lesson = Lesson.new
    @shifts = Shift.where(start_at: params[:start_at]) if params[:start_at].present?
    if @shifts.present?
      @shift_teacher_ids = []
      @shifts.each do |shift|
        @shift_teacher_ids << shift.teacher.id
      end
      @subject_teachers = SubjectTeacher.where(subject_id: params[:subject]) if params[:subject].present?
      @subject_teacher_ids = @subject_teachers.map(&:teacher_id)
      @teacher_ids = (@shift_teacher_ids + @subject_teacher_ids).flatten
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
