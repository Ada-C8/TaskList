class TasksController < ApplicationController
  def index
    @tasks = [
      {title: "Clean kitchen", discription: "Clean the counters and the stove", due_date: "9/30/17", competion_status: "Not completed"},
      {title: "Email Jeff", discription: "About meeting for coffee", due_date: "9/25/17", competion_status: "Not completed"},
      {title: "Order shoes", discription: "Buy new sneakers for fall", due_date: "9/22/17", competion_status: "Completed"}
    ]
  end # index
end
