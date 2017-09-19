class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.date :date
      t.boolean :status

      t.timestamps
    end
  end
end
