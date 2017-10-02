class AddPriority < ActiveRecord::Migration[5.1]
  def change
    add_column(:tasks, :priority, :Integer, :default => 0)
  end
end
