class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.boolean :status
      t.string :action

      t.timestamps
    end
  end
end
