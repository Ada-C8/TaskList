class TasksController < ApplicationController
  def index
    @tasks = Task.order(:completed).group_by {|task| sort_variable(params[:sort], task)}
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def edit
    @task = Task.find(params[:id].to_i)
  end

  def update
    @task = Task.find(params[:id].to_i)
    @task.owner = params[:task][:owner]
    @task.title = params[:task][:title]
    @task.description = params[:task][:description]
    @task.deadline =  Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    @task.priority = params[:task][:priority].to_i
    @task.category = params[:task][:category]
    if @task.save
      redirect_to '/tasks'
    else
      render :new
    end
  end

  def mark_complete
    @task = Task.find(params[:id].to_i)
    if @task.completed == true
      @task.completed = false
    else
      @task.completed = true
    end
    @task.save
    redirect_to '/tasks'
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(owner: params[:task][:owner], title: params[:task][:title], description: params[:task][:description], deadline: Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i), completed: false, priority: params[:task][:priority].to_i, category: params[:task][:category])
    if task.save
      flash[:notice] = "#{task.title} by #{task.owner} was successfully created"
      redirect_to '/tasks'
    else
      render :new
    end

  end

  def destroy
    @task = Task.find(params[:id].to_i)
    owner = @task.owner
    title = @task.title
    completed = @task.completed
    if @task.destroy
      completed ? (flash[:notice] = "#{title} was successfully deleted, great job #{owner}!") : (flash[:notice] = "#{title} was successfully deleted, better luck next time #{owner}!")
      redirect_to '/tasks'
    else
      render :index
    end
  end
end

private
  def sort_variable(input_sort, input_task)
    if input_sort == "owner"
      input_task.owner
    elsif input_sort == "priority"
      input_task.priority
    else
      input_task.category
    end
  end
