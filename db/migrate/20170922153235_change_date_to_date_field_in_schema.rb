class ChangeDateToDateFieldInSchema < ActiveRecord::Migration[5.1]
  def change
    change_column(:tasks, :due_date, :date_field)
  end
end
