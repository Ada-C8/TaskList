class EditColumnTypes < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :created, :datetime 
    change_column :tasks, :due, :datetime
  end
end
