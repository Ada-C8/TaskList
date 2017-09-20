class Task < ApplicationRecord
  after_initialize :init

  def init
    self.complete = false if self.complete.nil?
  end
end
