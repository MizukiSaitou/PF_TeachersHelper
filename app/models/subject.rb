class Subject < ApplicationRecord
  has_many :subject_students, dependent: :destroy
  has_many :students, through: :subject_students
  has_many :subject_teachers, dependent: :destroy
  has_many :teachers, through: :subject_teachers
  has_many :lessons, dependent: :destroy

end
