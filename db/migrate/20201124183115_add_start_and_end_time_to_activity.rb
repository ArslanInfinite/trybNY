class AddStartAndEndTimeToActivity < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :end_at, :datetime
    rename_column :activities, :datetime, :start_at
  end
end
