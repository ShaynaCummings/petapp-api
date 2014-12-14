class CreateVeterinarians < ActiveRecord::Migration
  def change
    create_table :veterinarians do |t|
      t.string :first_name
      t.string :last_name
      t.string :practice_name
      t.string :phone_number
      t.string :email_address
      t.belongs_to :pet

      t.timestamps null: false
    end
  end
end
