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
  end

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
    params.require(:lesson).permit(:student_id, :teacher_id, :subject_id, :start_at, :end_at)
  end

end
