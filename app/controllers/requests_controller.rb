class RequestsController < ApplicationController

	before_action :set_request, :only => [:show, :edit, :update, :destroy]
	
	def index
		@client = Client.where(:id => params[:client_id])
		@requests = @client.requests
	end

	def index_requests
		if params[:name]
			@client = Client.where(:description => params[:name]).first
			@requests = @client.requests
		else
			@requests = Request.all
		end
	end

	def new

	end

	def new_request
		@request = Request.new
	end

	def create
		@request = Request.new(params[:request])
		
		if @request.save
			flash[:notice] = "Requisicao inserida com sucesso!"
		else
			flash[:notice] = "Erro ao inseriri requisicao"
		end
	end

	def show 
	end

	def edit
	end

	def update
		flash[:notice] = @request.update_attributes(params[:request]) ? "Requisicao alterada com sucesso" : "Erro ao modificar requisicao"
	end

	def destroy
		flash[:notice] = @request.destroy ? "Requisicao excluida com sucesso!" : "Erro ao inserir requisicao"
	end

	private
	def set_request
		@request = Request.find(params[:id])	
	end

	def request_params
		params.require(:request).permit(:description, :status)
	end
end