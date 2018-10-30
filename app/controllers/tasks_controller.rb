class TasksController < ApplicationController
  def create
    @tasks = "?"
  end

  def read
  end

  def update
    @task = Task.find(params[:id])
    # @taks.?
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end

  def new
    @tasks = Task.new(name: "trabalho")
  end

  def edit

  end
end
