class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :due_date
      t.string :completion_status

      t.timestamps
    end
  end
end
