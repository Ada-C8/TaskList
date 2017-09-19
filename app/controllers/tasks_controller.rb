class TasksController < ApplicationController
  def index
    @tasks = [
      {title: "Water the garden", description: "especially don't forget the basil in the corner", due_date: "Tuesday", complete: false, id:1},
      {title: "Feed the cat", description: "food is in the drawer under the dishes", due_date: "Thursday", complete: false, id:2},
      {title: "Take out the trash", description: "don't forget to sort the recyclables", due_date: "Friday", complete: false, id:2}
    ]
  end

  def create

  end

  def new

  end

  def edit

  end

  def show

  end

  def update

  end

  def update

  end

  def destroy

  end
end
