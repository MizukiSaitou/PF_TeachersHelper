class Teacher < ApplicationRecord

  has_many :students, through: :lessons
  has_many :lessons, dependent: :destroy
  has_many :shifts, dependent: :destroy
  has_many :subject_teachers, dependent: :destroy
  has_many :subjects, through: :subject_teachers
  accepts_nested_attributes_for :subject_teachers, allow_destroy: true

   enum gender: {"男性": 0, "女性": 1}

   with_options presence: true do
     validates :name
     validates :name_kana
     validates :grade
     validates :university
     validates :undergraduate
     validates :gender
     validates :phone_number
   end
end
