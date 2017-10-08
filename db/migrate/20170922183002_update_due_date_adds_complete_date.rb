class UpdateDueDateAddsCompleteDate < ActiveRecord::Migration[5.1]
  def change
    change_column(:tasks, :due_date, :date)
    # add_column(table_name, column_name, data_type, options)
    add_column(:tasks, :completed_date, :date)
  end
end
