class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :completed_status_class

  def completed_status_class(task)
    if task.completed
      return "completed"
    else
      return "not_completed"
    end
  end

end
