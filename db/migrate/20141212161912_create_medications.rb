class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :rx_num
      t.float :dose_amt
      t.string :dose_units
      t.string :dose_frequency
      t.float :med_cost
      t.string :description
      t.date :date_prescribed
      t.belongs_to :pet

      t.timestamps null: false
    end
  end
end
