class CreateOfferings < ActiveRecord::Migration
  def change
    create_table :offerings do |t|
      t.integer :semester
      t.string :location
      t.integer :section
      t.integer :crn
      t.string :professor_last_name
      t.integer :spots_available
      t.references :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :offerings, :courses
  end
end
