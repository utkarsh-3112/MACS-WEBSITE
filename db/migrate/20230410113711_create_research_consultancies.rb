class CreateResearchConsultancies < ActiveRecord::Migration[7.0]
  def change
    create_table :research_consultancies do |t|
      t.text :project_name
      t.references :faculty, null: false, foreign_key: true
      t.string :sanctioned_amount
      t.binary :status
      t.string :project_type

      t.timestamps
    end
  end
end
