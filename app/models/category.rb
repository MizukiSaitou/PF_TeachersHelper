class Category < ApplicationRecord
  has_many :subjects, dependent: :destroy
end
