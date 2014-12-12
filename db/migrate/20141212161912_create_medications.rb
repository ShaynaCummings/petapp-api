class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :rx_num
      t.float :dose_amt
      t.string :dose_units
      t.string :description
      t.string :method

      t.timestamps null: false
    end
  end
end
