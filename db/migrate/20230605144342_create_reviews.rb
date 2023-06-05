
class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rate 
      t.string :comment
      t.integer :user_id # this is our foreign key
      t.timestamps
    end
  end
end