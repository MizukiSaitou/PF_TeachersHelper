class Lesson < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :subject

  validates :student_id, presence: true
  validates :teacher_id, presence: true
  validates :subject_id, presence: true
  validates :start_at, uniqueness: { scope: [:student_id, :teacher_id] }

  # validate :student_validate

  # def student_validate
  #   # 生徒・start_atで検索
  #   student_lesson = Lesson.where(start_at: start_at, student_id: student_id)
  #   if student_lesson.present?
  #     # データがある場合、登録できないためエラー

  #     return false
  #   else
  #     # データがない場合は、登録する
  #     return true
  #   end
  # end

end
