class TasksController < ApplicationController
  def index
    @tasks = [
      {title: "Water the garden", description: "especially don't forget the basil in the corner", due_date: "Tuesday", complete: false},
      {title: "Feed the cat", description: "food is in the drawer under the dishes", due_date: "Thursday", complete: false},
      {title: "Take out the trash", description: "don't forget to sort the recyclables", due_date: "Friday", complete: false}
    ]


  end
end
