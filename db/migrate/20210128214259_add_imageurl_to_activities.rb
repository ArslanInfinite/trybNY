class AddImageurlToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :imageurl, :string
    
  end
end
