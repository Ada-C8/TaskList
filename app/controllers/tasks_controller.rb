require 'date'
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def new
    @new = Task.new
  end
end
