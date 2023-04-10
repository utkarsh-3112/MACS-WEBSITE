class CreatePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :publications do |t|
      t.text :name
      t.string :publish_in
      t.binary :reigon
      t.string :url
      t.date :year

      t.timestamps
    end
  end
end
