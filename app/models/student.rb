class Student < ApplicationRecord
   has_many :records, dependent: :destroy
   has_many :subject_students, dependent: :destroy
   has_many :subjects, through: :subject_students
   accepts_nested_attributes_for :subject_students, allow_destroy: true

   enum gender: {"男性": 0, "女性": 1}
end
