class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.string :description
      t.belongs_to :pet
      t.belongs_to :veterinarian

      t.timestamps null: false
    end
  end
end
