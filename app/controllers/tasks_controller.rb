class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def new
    @task = Task.new
  end

  def read
  end

  def update
    @task = Task.find(params[:id])
    # Entendi mais ou menos esse params :tasks, pedir por orientacao

    @task.update(task_params)

    redirect_to tasks_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end

  def edit
    @task = Task.find(params[:id])
  end

    private

  def task_params
    params.require(:task).permit(:title, :details)
      # Never trust user data!
    # params.require(:restaurant).permit(:name, :address)
  end
end
