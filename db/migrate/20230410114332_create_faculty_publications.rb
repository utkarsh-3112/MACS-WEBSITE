class CreateFacultyPublications < ActiveRecord::Migration[7.0]
  def change
    create_table :faculty_publications do |t|
      t.references :faculty, null: false, foreign_key: true
      t.references :publication, null: false, foreign_key: true

      t.timestamps
    end
  end
end
