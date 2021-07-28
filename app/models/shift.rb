class Shift < ApplicationRecord

  belongs_to :teacher

  validates :teacher_id, presence: true
  validates :start_at, presence: true

  def start_time
    self.start_at
  end

end
