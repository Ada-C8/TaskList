class ChangeTaskStatusNameDataType < ActiveRecord::Migration[5.1]
  def change
    rename_column(:tasks, :status, :complete?)
    change_column(:tasks, :complete?, :boolean)
  end
end
