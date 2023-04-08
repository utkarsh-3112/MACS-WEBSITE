class CreateContractStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :contract_staffs do |t|
      t.string :dp
      t.string :name
      t.string :designation
      t.string :qualification

      t.timestamps
    end
  end
end
