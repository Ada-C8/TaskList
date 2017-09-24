class AddTaskCategory < ActiveRecord::Migration[5.1]
  def change
    add_column(:tasks, :category, :string, :default => "Unsorted")
  end
end
