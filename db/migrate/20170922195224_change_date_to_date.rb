class ChangeDateToDate < ActiveRecord::Migration[5.1]
  def change
    change_column(:tasks, :completion_date, 'date USING CAST(completion_date AS date)')
  end
end
