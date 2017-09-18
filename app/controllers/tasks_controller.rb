class TasksController < ApplicationController
  def index
    @tasks = [
      { name: "Do laundry",
        created: "2017/09/19",
        status: "Incomplete",
        due: "2017/09/21"
      },
      { name: "Cook dinner",
        created: "2017/09/18",
        status: "Incomplete",
        due: "2017/09/18"
      },
      { name: "Do homework",
        created: "2017/09/19",
        status: "Incomplete",
        due: "2017/09/19"
      },
      { name: "Mail forms",
        created: "2017/09/19",
        status: "Complete",
        due: "2017/10/13"
      },
      { name: "Text Kimmy", 
        created: "2017/09/19",
        status: "Incomplete",
        due: "2017/09/19"
      }
    ]
  end
end
