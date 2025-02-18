class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    raise
    redirect_to task_path(@task)
  end


  private

  def task_params
    params.require(:tasks).permit(:title, :details)
  end
end
