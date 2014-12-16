class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.float :weight_amt
      t.string :weight_units
      t.date :date_measured
      t.belongs_to :pet

      t.timestamps null: false
    end
  end
end
