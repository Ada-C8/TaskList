class Remove < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :boolian
  end
end
