class AddDelayToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :delay, :integer
  end
end
