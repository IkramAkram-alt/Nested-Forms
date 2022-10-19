class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :c_name
      t.string :c_title

      t.timestamps
    end
  end
end
