class AddDateCompletedColumn < ActiveRecord::Migration[5.1]
  def change
    add_column(:tasks, :date_completed, :datetime)
  end
end
