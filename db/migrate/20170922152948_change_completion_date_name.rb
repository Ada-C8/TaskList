class ChangeCompletionDateName < ActiveRecord::Migration[5.1]
  def change
    rename_column(:tasks, :completion_date, :due_date)
  end
end
