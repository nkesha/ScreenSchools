class AddUserIdToSchools < ActiveRecord::Migration[5.0]
  def change
    add_column :schools, :user_id, :integer
  end
end
