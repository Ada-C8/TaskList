class AddCompletionDateToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :completed_date, :date
  end
end
