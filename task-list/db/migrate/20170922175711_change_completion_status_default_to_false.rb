class ChangeCompletionStatusDefaultToFalse < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :completion_status, :boolean, :default => false
  end
end
