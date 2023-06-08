class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :Products do |t|
      t.string :title
      t.string :description
      t.string :user_id
      t.integer :price
      # t.timestamps
    end
  end
end