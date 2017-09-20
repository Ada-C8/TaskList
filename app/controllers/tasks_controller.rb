class TasksController < ApplicationController

  def index
    @tasks = Task.order(:id)
  end

  def show
    @task = Task.find( params[:id].to_i)
  end
  
def create
end

def update
end

def destroy
end

def edit
end
end
