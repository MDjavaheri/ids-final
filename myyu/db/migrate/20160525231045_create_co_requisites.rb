class CreateCoRequisites < ActiveRecord::Migration
  def change
    create_table :co_requisites do |t|
      t.integer, :course1_id
      t.integer :course2_id

      t.timestamps null: false
    end
  end
end
