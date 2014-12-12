class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.float :amount
      t.string :category
      t.string :description
      t.string :vendor
      t.datetime :date_incurred
      t.datetime :date_paid

      t.timestamps null: false
    end
  end
end
