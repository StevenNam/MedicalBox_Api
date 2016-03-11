class CreateMedicalBoxes < ActiveRecord::Migration
  def change
    create_table :medical_boxes do |t|
      t.string :name, null: false, default: 'New Medical Box'
      t.string :alert_time, null: false
      t.string :frequency, null:false, default: 'once'
      t.integer :prompt, null: false, default: 0
      t.integer :user_id
      t.boolean :is_deleted, null: false, default: false
      t.timestamps null: false
    end

    add_foreign_key :medical_boxes, :users
  end
end
