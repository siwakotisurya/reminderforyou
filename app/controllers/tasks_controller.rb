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
      flash[:sucess] = "Reminder Sucessfuly Created <br><br>".html_safe
      render "new"
    else
      flash[:sucess] = "Please try again".html_safe
      render "new"
    end

  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(set_db_params) 
      flash[:delete] = "Task Sucessfuly Updated" 
      render "viewall"
    end
  end

  def delete
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      flash[:delete] = "Task Deleted"
      redirect_to :controller=>"tasks" ,:action=>"viewall"
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
