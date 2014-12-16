class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :category
      t.string :breed
      t.date :birthdate
      t.string :sex
      t.date :adoption_date
      t.string :microchip_number
      t.string :picture_url
      # t.belongs_to :user
      t.belongs_to :veterinarian

      t.timestamps null: false
    end
  end
end

