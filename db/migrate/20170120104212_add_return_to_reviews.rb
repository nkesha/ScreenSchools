class AddReturnToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :return, :integer
  end
end
