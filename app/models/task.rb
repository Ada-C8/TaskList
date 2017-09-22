class Task < ApplicationRecord

  def complete?
    !(self.completion_date.nil?)
  end
end
