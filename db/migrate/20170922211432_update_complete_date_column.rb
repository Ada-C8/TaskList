class UpdateCompleteDateColumn < ActiveRecord::Migration[5.1]
  def change
    change_column(:tasks, :complete_date, :datetime)
  end
end
