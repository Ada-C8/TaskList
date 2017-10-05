class TasksController < ApplicationController

  # TASKS = [ { id: 1, task_name: 'buy groceries', complete: true },
  #           { id: 2, task_name: 'wash car', complete: false },
  #           { id: 3, task_name: 'do laundry', complete: false },
  #           { id: 4, task_name: 'lightning talk', complete: false } ]

  def new
    @task = Task.new
  end

  def index
    # @tasks = Task.order('LOWER(name)')
    @tasks = Task.order(:due_date)
  end

  def edit
    @task = Task.find_by( id: params[:id].to_i )

    unless @task
      redirect_to root_path
    end
  end

  def update
    task = Task.find_by( id: params[:id].to_i )

    unless task
      # flash[:alert]
      redirect_to root_path
    end

    if task.update_attributes task_params
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id].to_i)
    @task.destroy

    redirect_to root_path

  end

  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description], due_date: params[:task][:due_date], completion_date: params[:task][:completion_date])

    if @task.save
      flash[:notice] = "Task added"
      redirect_to root_path
    else
      flash[:alert] = "Task failed to add"
      render :new
    end
  end

  def show
    @task = Task.find( params[:id].to_i )
    # id = params[:id].to_i
    # @task = nil
    #
    # TASKS.each do |task|
    #   if task[:id] == id
    #     @task = task
    #   end
    # end
  end

  def mark_complete
    @task = Task.find( params[:id].to_i )
    @task.completion_date = @task.completion_date ? nil : Date.today

    # @task.complete = @task.complete ? false : true

    @task.save

    redirect_to root_path
  end

  private

  def task_params
    return params.require(:task).permit(:name, :description, :due_date, :completion_date)
  end

end
