class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.id :product
      t.integer :cart_id

      t.timestamps null: false
    end
  end
end
