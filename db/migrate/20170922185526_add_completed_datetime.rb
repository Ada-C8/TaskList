class AddCompletedDatetime < ActiveRecord::Migration[5.1]
  def change
    add_column(:tasks, :date_complete, 'datetime')
  end
end
