class Shift < ApplicationRecord

  belongs_to :teacher

  def start_time
    self.start_at
    self.end_at
  end

  scope :record_date_between, -> start_at, end_at {
  if start_at.present? && end_at.present?
    where('record_date >= ?', start_at && 'record_date <= ?',end_at)
  end
  }

end
