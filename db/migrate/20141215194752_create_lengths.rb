class CreateLengths < ActiveRecord::Migration
  def change
    create_table :lengths do |t|
      t.float :length_amt
      t.string :length_units
      t.date :date_measured
      t.belongs_to :pet

      t.timestamps null: false
    end
  end
end
