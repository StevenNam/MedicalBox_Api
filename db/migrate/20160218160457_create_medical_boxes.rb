class CreateMedicalBoxes < ActiveRecord::Migration
  def change
    create_table :medical_boxes do |t|
      t.string :name
      t.integer :user_id
      t.timestamps null: false
    end

    add_foreign_key :medical_boxes, :users
  end
end
