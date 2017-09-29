class AddCompletedDateToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :completed_date, :datetime
  end
end
