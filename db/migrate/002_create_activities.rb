class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.string :location
      t.integer :rating
      t.integer :capacity
      t.integer :price
      t.datetime :datetime 
      t.belongs_to :user
    end
  end
end