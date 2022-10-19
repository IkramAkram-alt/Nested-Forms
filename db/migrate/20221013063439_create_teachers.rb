class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.references :department, null: false, foreign_key: true
      t.string :t_name
      t.string :t_type
      t.integer :t_age
      t.references :headmaster, foreign_key: { to_table: :teachers }
      t.references :course, null: true, foreign_key: true

      t.timestamps
    end
  end
end
