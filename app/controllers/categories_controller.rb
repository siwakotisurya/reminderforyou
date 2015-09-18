class CategoriesController < ApplicationController
  
  layout "users"

  def index
  end

  def show
  end

  def new

  end

  def create
    task = find_params
    @category = task.categories.new(set_db_params)
    if @category.save 
      flash[:message] = "New Category Sucessfully Added to Reminder"
      render "categories/new"
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private
    def find_params
      Task.find(params[:task_id])
    end
    def set_db_params
      params.require(:category).permit(:sub_task_name, :sub_task_desc)
    end
end
