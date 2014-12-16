class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :appointment_date
      t.time :appointment_time
      t.string :description
      t.float :appt_cost
      t.belongs_to :pet
      t.belongs_to :veterinarian

      t.timestamps null: false
    end
  end
end
