class Teacher < ApplicationRecord
  has_many :subordinates, class_name: 'Teacher',foreign_key: 'headmaster_id' 
  belongs_to :headmaster, class_name: 'Teacher', optional: true 
  belongs_to :department
  belongs_to :course
  has_many :students, through: :courses

  validates :t_name,:t_type, format: { with: /\A[a-z A-Z]+\z/, message: "Only letters allowed" }, length: { minimum: 3 }, presence: true
  validates :t_age, presence: true,:numericality => { :greater_than_or_equal_to => 20,:less_than_or_equal_to => 65 }

end
