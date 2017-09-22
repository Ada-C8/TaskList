class TasksController < ApplicationController

  def index
    @tasks = Task.order(:completion_date)
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

  def create
    @task = Task.new(name: params[:task][:name], completion_date: params[:task][:completion_date], description: params[:task][:description], status: :incomplete)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update

    id = params[:id].to_i
    @task = Task.find(id)

    # task.update_attributes (saves simultaneously)
    # task.update_attributes params[:task][:name], params[:task][:completion_date], params[:task][:description]

    # strong params
    # can also use in create or update actions
    # make this into a method?
    # task.update_attributes params.require(:task).permit(:name, :completion_date, :description)
    # 
    # private
    #   def task_params
    #     return params.require(:task).permit(:name, :completion_date, :description)
    #   end
    #
    #

    @task.name = params[:task][:name]
    @task.completion_date = params[:task][:completion_date]
    @task.description = params[:task][:description]

    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def mark_complete
    id = params[:id].to_i
    @task = Task.find(id)
    @task.completion_date = Date.today
    @task.status = "complete"
    @task.save
    redirect_to root_path
  end

  def mark_incomplete
    id = params[:id].to_i
    @task = Task.find(id)
    @task.status = "incomplete"
    @task.save
    redirect_to root_path
  end

  def edit
    id = params[:id].to_i
    @task = Task.find(id)
    unless @task
      redirect_to root_path
    end
  end

  def destroy
    id = params[:id].to_i
    @task = Task.find(id)
    if @task.destroy
      redirect_to root_path
    end
  end

  def new
    @task = Task.new
  end

end
