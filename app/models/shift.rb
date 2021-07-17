class Shift < ApplicationRecord

  belongs_to :teacher

  def start_time
    self.start_at
  end

end
