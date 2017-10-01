class ChangeCompleteToBoolean < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :complete, :boolean
  end
end
