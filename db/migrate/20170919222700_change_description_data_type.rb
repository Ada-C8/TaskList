class ChangeDescriptionDataType < ActiveRecord::Migration[5.1]
  def change
    remove_column(:tasks, :description)
    add_column(:tasks, :description, :text)
  end
end
