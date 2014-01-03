class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :expert_id
      t.string :student_id
      t.timestamps
    end
  end
end
