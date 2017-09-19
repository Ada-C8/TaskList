class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :created
      t.string :status
      t.string :due
    end
  end
end
