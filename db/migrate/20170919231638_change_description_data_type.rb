class ChangeDescriptionDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :description, 'text USING CAST(description AS text)'
  end
end
