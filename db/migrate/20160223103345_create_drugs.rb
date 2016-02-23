class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name, null: false
      t.integer :amount, null:false, default: 1
      t.boolean :is_deleted, null: false, default: false
      t.integer :medical_box_id
      t.timestamps null: false
    end

    add_foreign_key :drugs, :medical_boxes
  end
end
