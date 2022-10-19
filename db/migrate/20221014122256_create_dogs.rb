class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.references :owner, null: true, foreign_key: true, unique: true

      t.timestamps
    end
  end
end
