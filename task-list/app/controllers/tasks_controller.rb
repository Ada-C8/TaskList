class TasksController < ApplicationController
  def index

    @tasks = Task.all
    # @tasks = [
    #   {title: "Clean kitchen", discription: "Clean the counters and the stove", due_date: "9/30/17", competion_status: "Not completed"},
    #   {title: "Email Jeff", discription: "About meeting for coffee", due_date: "9/25/17", competion_status: "Not completed"},
    #   {title: "Order shoes", discription: "Buy new sneakers for fall", due_date: "9/22/17", competion_status: "Completed"}
    # ]
  end # index

  def show
    @task = Task.find(params[:id])
  end # show

  def new
    @task = Task.new
  end # new

  def create
    task = Task.new(title: params[:task][:title], description: params[:task][:description], due_date: params[:task][:due_date], completion_status: params[:task][:completion_status])
    task.save
    redirect_to('/tasks')
  end # create

  def edit
    @task = Task.find(params[:id])
  end # edit

  def update
    @task = Task.find(params[:id])
    @task.title = params[:task][:title]
    @task.description = params[:task][:description]
    @task.due_date = params[:task][:due_date]
    @task.completion_status = params[:task][:completion_status]
    @task.save
    redirect_to('/tasks')
  end #update
end
