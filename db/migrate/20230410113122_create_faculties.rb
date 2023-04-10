class CreateFaculties < ActiveRecord::Migration[7.0]
  def change
    create_table :faculties do |t|
      t.string :dp
      t.string :name
      t.string :designation
      t.date :date_of_joining
      t.text :professional_experience
      t.text :academic_background
      t.text :areas_of_interest
      t.text :visits_abroad
      t.text :remarks

      t.timestamps
    end
  end
end
