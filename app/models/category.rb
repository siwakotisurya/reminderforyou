class Category < ActiveRecord::Base
belongs_to :task, dependent: :destroy
end
