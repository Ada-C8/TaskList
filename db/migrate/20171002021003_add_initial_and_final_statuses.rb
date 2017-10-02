class AddInitialAndFinalStatuses < ActiveRecord::Migration[5.1]
  def change
    add_column(:tasks, :initial_status, :boolean)
    add_column(:tasks, :final_status, :boolean)
  end
end
