class AddEmailAndPhoneNumberToFaculties < ActiveRecord::Migration[7.0]
  def change
    add_column :faculties, :email, :string
    add_column :faculties, :phone_number, :string
  end
end
