class ChangeCompletedAtTasks < ActiveRecord::Migration[5.1]
  def change
    add_column(:tasks, :completed_at, :date)
  end
end
