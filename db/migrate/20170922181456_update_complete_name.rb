class UpdateCompleteName < ActiveRecord::Migration[5.1]
  def change
    rename_column(:tasks, :complete?, :complete)
  end
end
