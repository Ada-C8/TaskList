class AddCompletedToTasks < ActiveRecord::Migration[5.1]
  def change
add_column :tasks, :completed, :boolean , default: false
#adding column, tasks is name of table, new column name, name column kind of data , add default key value of false
  end
end
