class CreateBubbleTeas < ActiveRecord::Migration[5.2]
  def change
    create_table :bubble_teas do |t|
      t.string :tea_type
      t.boolean :boba
      t.float :sugar_level

      t.timestamps
    end
  end
end
