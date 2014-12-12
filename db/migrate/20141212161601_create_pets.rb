class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.string :breed
      t.integer :age_years
      t.integer :age_months
      t.string :sex
      t.string :adoption_date
      t.string :picture_url

      t.timestamps null: false
    end
  end
end
