class Teacher < ApplicationRecord

  has_many :subject_teachers, dependent: :destroy
  has_many :subjects, through: :subject_teachers

   enum gender: {"男性": 0, "女性": 1}
end
