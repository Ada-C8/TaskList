class TasksController < ApplicationController

  def index
    @tasks = Task.all

  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)

    unless @task
      redirect_to tasks_path
    end
  end

  def show
    @task = Task.find_by(id: params[:id])
    # task = params.to_s
    # @tasks = ""
    # TASKS.each do |task|
    #
    #   puts @tasks << "#{task} "
    #   end

  end


  def update
     task = Task.find_by(id: params[:id])
     redirect_to root_path unless task

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
     @task = Task.new(name: params[:task][:name], description: params[:task][:description], completion: params[:task][:completion])
     if @task.save
       redirect_to root_path
     else
       render :new
     end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to('/tasks')
  end

  def mark_complete
    @task = Task.find_by(id: params[:id])

    if @task.status == true
      @task.completion = nil
      @task.status = false
    else
      @task.status = true
      @task.completion = Date.today
    end
    @task.save
    redirect_to root_path
  end
end
