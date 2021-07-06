class SubjectStudent < ApplicationRecord
  belongs_to :student
  belongs_to :subject_student
end
