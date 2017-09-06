class ChangeIntegerLimitInClients < ActiveRecord::Migration
  def change
  	change_column :clients, :mobile, :integer,limit: 8
  end
end
