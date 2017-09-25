class AddStatusAndDatetimeColumns < ActiveRecord::Migration[5.1]
  def change
    add_column(:tasks, :status, :boolean)
    add_column(:tasks, :complete_date, :string)
  end
end
