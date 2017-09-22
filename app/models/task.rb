class Task < ApplicationRecord
  def complete?
    !(self.completion_date.nil?)
    # self.completed = true
    # self.completion_date = Time.current
    # self.save
  end
end
