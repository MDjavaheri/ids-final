class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :dept
      t.string :course
      t.string :title
      t.timestamps null: false
    end
  end
end
