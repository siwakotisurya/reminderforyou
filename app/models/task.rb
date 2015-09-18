class Task < ActiveRecord::Base

	validates :task_name, :task_description,
			  :task_categories, :task_time, :task_hour,
			  :task_minute, presence: true

	validates :task_name, :length=>{:minimum=>3}


end
