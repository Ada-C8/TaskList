class UpdateTables < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :complete, :boolean
    change_column :tasks, :due_date, :date
  end
end
