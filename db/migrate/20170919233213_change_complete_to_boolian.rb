class ChangeCompleteToBoolian < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :complete, :boolian
  end
end
