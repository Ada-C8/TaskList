class RemoveStringColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :string
  end
end
