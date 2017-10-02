class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :owner
      t.string :title
      t.string :description
      t.timestamp :deadline
      t.boolean :status

      t.timestamps
    end
  end
end
