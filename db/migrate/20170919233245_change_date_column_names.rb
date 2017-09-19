class ChangeDateColumnNames < ActiveRecord::Migration[5.1]
  def change
    rename_column(:tasks, :completionDate, :completion_date)
    rename_column(:tasks, :dueDate, :due_date)
  end
end
