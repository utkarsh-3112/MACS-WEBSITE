class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :course_code
      t.string :course_name
      t.integer :semester
      t.string :category
      t.string :programme
      t.integer :credits
      t.text :content
      t.text :references
      t.string :department

      t.timestamps
    end
  end
end
