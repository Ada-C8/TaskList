class Task < ApplicationRecord
  def complete!
    self.completed = true
    self.completion_date = Time.current
    self.save
  end
end
