class TaskListController < ApplicationController
  # TASK_LIST = [
  #   {id: 1, status: false, action: "Master Rails"},
  #   {id: 2, status: false, action: "Learn how to cook palak paneer"},
  #   {id: 3, status: false, action: "Laundry"},
  #   {id: 4, status: false, action: "Go for a walk"}
  # ]

  def index
    # @task_list = TASK_LIST
    @tasks = Task.order(:id)

    # @tasks.sort_by { |task| Date.strptime(task.completion_date, "%m/%d/%Y") }

    # @tasks = Task.order(Date.strptime(:completion_date, "%m/%d/%Y"))
  end

  def show

    @task = Task.find( params[:id].to_i )
    # id = params[:id].to_i
    # @task = nil
    # TASK_LIST.each do |task|
    #   if task[:id] == id
    #     @task = task
    #   end
    # end
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)

    unless @task
	     redirect_to root_path
    end
  end

  def update
    task = Task.find_by(id: params[:id].to_i)
    redirect_to task_path unless task

    if task.update_attributes task_params
      redirect_to root_path
    else
      render :edit
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(completion_date: params[:task][:completion_date], name: params[:task][:name], action: params[:task][:action],  status: params[:task][:status])
    if @task.save
      redirect_to root_path #root_path refers to "root to" in the controller
    else
      render :new
    end
  end

  def destroy
    Task.find_by(id: params[:id].to_i).destroy
	  redirect_to root_path
  end

  #create a method to toggle status - use update method
  def mark_complete
    @task = Task.find(params[:id].to_i)
    @task.status ? @task.update(status: false) : @task.update(status: true)
    redirect_to root_path
  end


  private

  def task_params
		return params.require(:task).permit(:name, :action, :completion_date, :status)
  end

end
