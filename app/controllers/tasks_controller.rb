class TasksController < ApplicationController
  def create
    @tasks = Task.find(params[:id])
    @tasks.save
  end

  def read
  end

  def update
    @task = Task.find(params[:id])
    # Entendi mais ou menos esse params :tasks, pedir por orientacao
    @tasks.update(params[:tasks])

    @tasks.update(user_params)

    redirect_to tasks_path(@tasks)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end

  def new
    @tasks = Task.new
  end

  def edit
    @task = Task.find(params[:id])

  end

    private

  def user_params
    params.require(:user).permit(:email)
      # Never trust user data!
    # params.require(:restaurant).permit(:name, :address)
  end
end
