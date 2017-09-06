class Api::V1::ClientsController < Api::V1::ApiController

def index
	@clients = Client.all
end

def create
	@client = Client.new(client_params)
	if @client.save
		render 'create.json'
	else
		render 'errors.json'
	end
	
end
def show
	@client = Client.find(params[:id])
end
def update
	@client = Client.find(params[:id])
	if @client.update_attributes(client_params)
		render 'update.json'
	else
		render 'errors.json'
	end
	
end
def destroy
	@client = Client.find(params[:id])
 	@client.destroy

	
end


private

def client_params
	params[:client].permit(:name,:email,:mobile,:website)
	
end

end
