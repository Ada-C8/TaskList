class DeleteCompleteFromTasksAddFunctionality < ActiveRecord::Migration[5.1]
  def change
    remove_column(:tasks, :complete, :boolean)
  end
end
