class AddNameAndCompletionDate < ActiveRecord::Migration[5.1]
  def change
    add_column( :tasks, :name, :string )
    change_column :tasks, :completion_date, 'date USING CAST(completion_date AS date)'
  end
end
