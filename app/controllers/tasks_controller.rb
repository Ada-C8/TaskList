class TasksController < ApplicationController
  def index
    @tasks = [
      { title: "Dishes", description: "I need to do the dishes today", date_due: "20SEP2017", status: false
      },
      { title: "Study", description: "Every day is a day to study programming!", date_due: "20SEP2017", status: false
      },
      { title: "Shopping", description: "I have no food in my fridge", date_due: "20SEP2017", status: false
      }
    ]
  end
end
