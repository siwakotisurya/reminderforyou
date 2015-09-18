class TasksController < ApplicationController

  layout "users"

  def index
    
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(set_db_params)
    if @task.save
      render "new"
    else
      render "new"
    end

  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      flash[:delete] = "Task Deleted"
      render "viewall"
    end
  end

  def viewall
    @tasks = Task.all
    @categories = Category.all
  end

  private 
    def set_db_params
      params.require(:task).permit(:task_name, :task_description, 
                                   :task_date, :task_time, :task_hour,
                                  :task_minute)
    end

end
