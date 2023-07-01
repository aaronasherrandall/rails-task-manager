class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new; end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def edit; end

  def update; end

  def destroy; end
end