class CreateVaccinations < ActiveRecord::Migration
  def change
    create_table :vaccinations do |t|
      t.string :name
      t.date :date_given
      t.date :next_due
      t.belongs_to :pet

      t.timestamps null: false
    end
  end
end
