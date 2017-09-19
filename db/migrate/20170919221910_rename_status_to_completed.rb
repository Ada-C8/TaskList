class RenameStatusToCompleted < ActiveRecord::Migration[5.1]
  def change
    rename_column(:tasks, :status, :completed)
  end
end
