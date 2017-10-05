class ChangeTaskColumnStatusName < ActiveRecord::Migration[5.1]
  def change
    rename_column(:tasks, :status, :complete)
  end
end
