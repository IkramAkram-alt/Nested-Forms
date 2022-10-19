class Course < ApplicationRecord
  has_many :teachers, dependent: :destroy
  has_and_belongs_to_many :students
  validates :c_name, uniqueness: true

end
