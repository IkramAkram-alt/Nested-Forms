class StudentsCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses_students, id: false do |t|
      t.belongs_to :student
      t.belongs_to :course
    end
  end
end
 