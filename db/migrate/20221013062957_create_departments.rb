class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :d_name
      t.string :d_location

      t.timestamps
    end
  end
end
