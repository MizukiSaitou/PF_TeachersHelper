class Working < ApplicationRecord

  belongs_to :teacher
  belongs_to :subject
  has_many :workings, dependent: :destroy
end
