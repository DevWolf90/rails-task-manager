class TasksController < ApplicationController

  before_action :find_task, only: [:show, :edit, :update, :destroy]


  def index
    @tasks = Task.all
    # @task = Task.find(params[:id])
    # @task = Task.find(params[:id])
  end

  def show
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end


  def new
    @task = Task.new
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private
  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.required(:task).permit(:title, :details, :completed)
  end
end
