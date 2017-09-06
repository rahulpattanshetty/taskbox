class Client < ActiveRecord::Base
has_many :projects
validates :name,:email,:website, presence:true
validates_length_of :mobile, is: 10
end
