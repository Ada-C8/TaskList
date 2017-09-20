class Task < ApplicationRecord

  def complete?
    self[:complete]
  end
end
