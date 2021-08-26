class Lesson < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :subject

  validates :student_id, presence: true
  validates :teacher_id, presence: true
  validates :subject_id, presence: true
  validates :start_at, presence: true

  validate :student_validate
  validate :teacher_validate

  private

  # 生徒が同じ日の同時刻に授業が登録されている場合、授業を組めなくする
  def student_validate

    exist = Lesson.where(student_id: self.student_id, start_at: self.start_at)
    if exist.present?
      errors.add(:base, "この生徒はすでに同日同時刻に授業を組んでいます。")
    end
  end

  # 講師がシフトが組まれている日/時刻で授業が組めないようにする。
  def teacher_validate

    exist = Lesson.where(teacher_id: self.teacher_id, start_at: self.start_at)
    if exist.present?
      errors.add(:base, "選択された講師はすでに授業が組まれています。")
    end

  end


  def self.search(search)
    if search.present?
      search = Time.zone.parse(search).utc
      Lesson.where('start_at = ?', search)
    else
      Lesson.all #全て表示させる
    end
  end


end