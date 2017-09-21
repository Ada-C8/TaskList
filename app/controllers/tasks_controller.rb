class TasksController < ApplicationController

  # TASKS = [{id: 1, task_name: "Complete Weekend Warrior"},
  #   {id: 2, task_name: "Complete Koans"},
  #   {id: 3, task_name: "Continue Readings"},
  #   {id: 4, task_name: "Take the dogs out"},
  #   {id: 5, task_name: "Do the dishes"},
  #   {id: 6, task_name: "Do the laundry"},
  #   {id: 7, task_name: "Cook before everything goes bad"},
  #
  # ]


  def index
    @tasks = Task.all #probably change to due date- Task.order(:due_date)
  end

  def show
    @task = Task.find( params[:id].to_i)

    # id = params[:id].to_i
    # @task = nil
    # TASKS.each do |task|
    #   if task[:id] == id
    #     @task = task
    #   end
    # end
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)

    unless @task
      redirect_to tasks_path
    end
  end

  def update
    task = Task.find_by(id: params[:id].to_i) #does not need to be instance var
    redirect_to tasks_path unless task #if couldnt find book, will redirect to home page

    if task.update_attributes task_params
      redirect_to root_path #or root_path - or books_path or flash notice
    else
      render :edit
    end

  end


  private def task_params
    return params.require(:task).permit(:name, :due_date, :description)
  end





  def new
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:task][:name], description:params[:task][:description])
    successful = @task.save
    if successful
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
  end
end
