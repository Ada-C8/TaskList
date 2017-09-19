class ChangeDateCompletedType < ActiveRecord::Migration[5.1]
  def change
    remove_column(:tasks, :completion_date)
    add_column(:tasks, :completion_date, :date)
  end
end
