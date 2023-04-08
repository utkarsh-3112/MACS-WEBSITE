class CreateAssistantLecturers < ActiveRecord::Migration[7.0]
  def change
    create_table :assistant_lecturers do |t|
      t.string :dp
      t.string :name
      t.string :qualification
      t.string :email
      t.string :contact_no

      t.timestamps
    end
  end
end
