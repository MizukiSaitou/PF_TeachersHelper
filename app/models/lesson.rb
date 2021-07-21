class Lesson < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :subject

  validates :student_id, presence: true
  validates :teacher_id, presence: true
  validates :subject_id, presence: true
  validates :start_at, presence: true

  validate :student_validate

  def student_validate
    # 生徒・start_atで検索
    student_lesson = Lesson.where('shifts.start_at >= ?', start_at.in_time_zone).where(student_id: student_id)
    if student_lesson.present?
      # データがある場合、登録できないためエラー
    #   redirect_to lessons_path
    # else
    #   # データがない場合は、登録する
    #   render :new
    end
  end

end
