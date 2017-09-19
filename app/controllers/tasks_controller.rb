require 'date'
class TasksController < ApplicationController
  def index
    @tasks = [
      { name: "Do laundry",
        created: Date.strptime('2017/09/19', '%Y/%m/%d'),
        status: "Incomplete",
        due: Date.strptime('2017/09/21', '%Y/%m/%d')
      },
      { name: "Cook dinner",
        created: Date.strptime('2017/09/18', '%Y/%m/%d'),
        status: "Incomplete",
        due: Date.strptime('2017/09/18', '%Y/%m/%d')
      },
      { name: "Do homework",
        created: Date.strptime('2017/09/19', '%Y/%m/%d'),
        status: "Complete",
        due: Date.strptime('2017/09/19', '%Y/%m/%d')
      },
      { name: "Mail forms",
        created: Date.strptime('2017/09/19', '%Y/%m/%d'),
        status: "Complete",
        due: Date.strptime('2017/10/13', '%Y/%m/%d')
      },
      { name: "Text Kimmy",
        created: Date.strptime('2017/09/19', '%Y/%m/%d'),
        status: "Incomplete",
        due: Date.strptime('2017/09/19', '%Y/%m/%d')
      }
    ]
  end
end
