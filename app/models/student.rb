class Student < ApplicationRecord
  has_and_belongs_to_many :courses
  has_many :teachers, through: :courses

  validates :s_name,format: { with: /\A[a-z A-Z]+\z/, message: "Only letters allowed" }, length: { minimum: 3 },presence: true
  validates :s_address,:s_dob, presence: true,length: { minimum: 5 }
  
end
