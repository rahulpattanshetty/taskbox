class Project < ActiveRecord::Base
belongs_to :client
has_many :tasks
validates_presence_of :name, :client_id, :start_date, :end_date

def save_check
	if self.end_date > self.start_date
		self.save
	else
		self[:end_date]={message:"end date should not less than start date"}
	end	
end

end
