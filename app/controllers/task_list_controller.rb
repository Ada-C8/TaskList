class TaskListController < ApplicationController
  def index
    @tasks = [{ title: "Shop for food", description: "Go to the grocery store and buy indredients for a pasta bake", due_date: "9/20/2017", completion_status: "incomplete"},
      { title: "Hang white board", description: "Install hanger clips and hang white board in living room", due_date: "9/23/2017", completion_status: "incomplete"},
      { title: "Renew passport", description: "Get headshots taken, fill out paperwork, mail into us gov office", due_date: "10/1/2017", completion_status:  "incomplete"},
      { title: "Call mom", description: "Call your mother!", due_date: "9/18/2017", completion_status:  "incomplete"}
    ]
  end
end
