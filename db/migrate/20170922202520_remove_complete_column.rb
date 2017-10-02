class RemoveCompleteColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :complete
  end
end
