class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.integer :academics
      t.integer :assistance
      t.integer :life
      t.text :comment

      t.timestamps
    end
  end
end
