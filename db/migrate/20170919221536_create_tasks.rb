class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :string
      t.string :description
      t.string :string
      t.string :due_date
      t.string :date
      t.string :complete
      t.string :boolian

      t.timestamps
    end
  end
end
