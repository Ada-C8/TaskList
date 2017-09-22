class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :description
      t.date :due
      t.boolean :status

      t.timestamps
    end
  end
end
