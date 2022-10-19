class Department < ApplicationRecord
  has_many :teachers, dependent: :destroy

end
