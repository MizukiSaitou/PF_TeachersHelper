class Teacher < ApplicationRecord

  has_many :subject_teachers, dependent: :destroy
  has_many :subjects, through: :subject_teachers
  accepts_nested_attributes_for :subject_teachers, allow_destroy: true

   enum gender: {"男性": 0, "女性": 1}
end
