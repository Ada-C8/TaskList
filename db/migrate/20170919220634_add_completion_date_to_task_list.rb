class AddCompletionDateToTaskList < ActiveRecord::Migration[5.1]
  def change
    add_column(:tasks, :completion_date, :string)
  end
end
