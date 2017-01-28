class AddCareerToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :career, :integer
  end
end
