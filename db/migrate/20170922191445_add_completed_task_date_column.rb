class AddCompletedTaskDateColumn < ActiveRecord::Migration[5.1]
  def change
    add_column(:tasks, :date_complete, :date)
  end
end
