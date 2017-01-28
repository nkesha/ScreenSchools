class AddSafetyToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :safety, :integer
  end
end
