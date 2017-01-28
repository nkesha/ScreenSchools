class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :title
      t.string :location
      t.string :program

      t.timestamps
    end
  end
end
