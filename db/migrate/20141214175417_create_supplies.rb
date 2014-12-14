class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :name
      t.string :description
      t.string :vendor
      t.date :purchase_date
      t.date :paid_date

      t.timestamps null: false
    end
  end
end
