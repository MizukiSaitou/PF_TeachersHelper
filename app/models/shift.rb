class Shift < ApplicationRecord

  belongs_to :teacher

  def start_time
    self.start_at
  end

  validates :teacher_id, presence: true
  validates :start_at, presence: true

  validate :shift_validate

  private

  def shift_validate
    exist = Shift.where(teacher_id: self.teacher_id, start_at: self.start_at)
    if exist.present?
      errors.add(:base, "この時間はすでに同日同時刻にシフトが入っています。")
    end
  end

end
