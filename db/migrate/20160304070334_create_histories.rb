class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.boolean :is_eaten, null: false, default: false
      t.integer :medical_box_id
      t.timestamps null: false
    end

    add_foreign_key :histories, :medical_boxes
  end
end
