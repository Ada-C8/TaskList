class DeleteTaskStatusColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :task_status
  end
end
