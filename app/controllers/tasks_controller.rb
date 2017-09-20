class TasksController < ApplicationController
  def index
    @tasks = Task.all
      # {
      #   title: "Run",
      #   description: "Runs 2 miles close to the river ",
      #   duedate: "Wensday",
      #   complete: "no"
      # },
      # {
      #   title: "Grocery",
      #   description: "To buy the food for the week",
      #   duedate: "Monday",
      #   complete: "no"
      # },
      # {
      #   title: "Homework",
      #   description: "Make my personal web site",
      #   duedate: "Monday",
      #   complete: "yes"
      # }
    
  end
end
