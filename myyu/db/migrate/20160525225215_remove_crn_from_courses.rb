class RemoveCrnFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :crn, :integer
  end
end
