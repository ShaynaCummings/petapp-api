class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.float :amount
      t.string :category
      t.string :description
      t.string :vendor
      t.date :date_incurred
      t.date :date_paid
      t.belongs_to :pet

      t.timestamps null: false
    end
  end
end
