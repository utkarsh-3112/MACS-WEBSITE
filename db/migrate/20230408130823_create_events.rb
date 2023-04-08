class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :date_time
      t.string :status
      t.string :name
      t.string :organizers
      t.string :coordinator
      t.string :sponsors
      t.string :event_type

      t.timestamps
    end
  end
end
