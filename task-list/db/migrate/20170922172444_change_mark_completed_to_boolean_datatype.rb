class ChangeMarkCompletedToBooleanDatatype < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :completion_status, :boolean
  end
end
