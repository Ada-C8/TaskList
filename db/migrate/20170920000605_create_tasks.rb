class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.date :date_completed

      t.timestamps
    end
  end
end
