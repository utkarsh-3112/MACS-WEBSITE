class CreateResearchScholars < ActiveRecord::Migration[7.0]
  def change
    create_table :research_scholars do |t|
      t.string :dp
      t.string :name
      t.string :category
      t.references :supervisors, null: false, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
