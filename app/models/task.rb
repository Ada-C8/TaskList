class Task < ApplicationRecord
  # def complete?
  #   self.completion_date.present?
  #
  #   # !(self.completion_date.nil?)
  #
  #   # self.completed = true
  #   # self.completion_date = Time.current
  #   # self.save
  # end

  def toggle_complete!
    if self.completed
      self.update_attribute(:completed, false)
    else
      self.completion_date = Time.current
      self.update_attribute(:completed, true)
    end
  end
end
