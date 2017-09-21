class ChangeParameterDataTypes < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :created, :date
    change_column :tasks, :due, :date
    change_column :tasks, :description, :text
  end
end
