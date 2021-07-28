class Student < ApplicationRecord

   has_many :teachers, through: :lessons
   has_many :lessons, dependent: :destroy
   has_many :records, dependent: :destroy
   has_many :subject_students, dependent: :destroy
   has_many :subjects, through: :subject_students
   accepts_nested_attributes_for :subject_students, allow_destroy: true

   enum gender: {"男性": 0, "女性": 1}


   with_options presence: true do
      validates :name
      validates :name_kana
      validates :grade
      validates :school
      validates :gender
      validates :phone_number
   end

 def self.search(search) #self.はStudent.を意味する
     if search
       where(['name LIKE ? OR school LIKE ?', "%#{search}%", "%#{search}%"]) #検索とnameとschoolの部分一致を表示。
     else
       all #全て表示させる
     end
 end

end
