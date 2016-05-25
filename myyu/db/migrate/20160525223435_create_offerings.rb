class CreateOfferings < ActiveRecord::Migration
  def change
    create_table :offerings do |t|
      t.integer :sem
      t.string :loc
      t.integer :section
      t.string :instructor
      t.integer :cap
      t.references :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :offerings, :courses
  end
end
