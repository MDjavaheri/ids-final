class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :dept
      t.string :crn
      t.string :title
      t.timestamps null: false
    end
  end
end
