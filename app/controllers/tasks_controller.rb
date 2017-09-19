class TasksController < ApplicationController

  def index
    @tasks = Task.all

  end

  def edit
  end

  def show
    # task = params.to_s
    # @tasks = ""
    # TASKS.each do |task|
    #
    #   puts @tasks << "#{task} "
    #   end
 
  end


  def update
  end

  def new
  end

  def create
  end

  def destroy
  end
end
