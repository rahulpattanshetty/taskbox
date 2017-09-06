class Task < ActiveRecord::Base
belongs_to :project
validates_presence_of :title, :due_date, :is_completed, :project_id

end
