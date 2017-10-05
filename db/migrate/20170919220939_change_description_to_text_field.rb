class ChangeDescriptionToTextField < ActiveRecord::Migration[5.1]
  def change
    remove_column(:tasks, :description, :string)
    add_column(:tasks, :description, :text)
  end
end
