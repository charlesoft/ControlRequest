# -*- coding: utf-8 -*-
class ClientsController < ApplicationController

	before_action :set_client, :only => [:show, :edit, :update, :destroy]


	def index
		@clients = Client.all
	end

	def new
		@client = Client.new
	end

	def create
		@client = Client.new(client_params)

		if @client.save
			flash[:notice] = "Cliente cadastrado com sucesso!!"
			redirect_to clients_path
		else
			flash[:notice] = "Algum campo está faltando ou os dados foram ineridos incorretamente!"
			render :action => :new
		end
	end

	def show
	end

	def edit
	end

	def update

		if @client.update(client_params)
			flash[:notice] = "Cliente atualizado com sucesso!"
			redirect_to @client
		else
			flash[:notice] = "Dados alterados incorretamente!"
			render :action => :edit
		end

	end

	def destroy
		flash[:notice] = @client.destroy ? "Cliente excluído com sucesso!" : "Não foi possível excluir esse cliente!"
		redirect_to clients_path
	end

	private 
	def set_client
		@client = Client.find(params[:id])
	end

	def client_params
		params.require(:client).permit(:description, :adress)
	end
end
