class TarefasController < ApplicationController

	def new
		@tarefa = Tarefa.new
	end

	def index
		#@tarefas = Tarefa.all
		@tarefas = Tarefa.includes(:projeto).all
	end

	def create
		@tarefa = Tarefa.new(params[:tarefa])
		if @tarefa.save
			flash[:notice] = "Tarefa criada com sucesso"
			redirect_to tarefas_path
		end
	end

	def edit
		@tarefa = Tarefa.find(params[:id])
	end

	def update
		@tarefa = Tarefa.find(params[:id])
		if @tarefa.update_attributes(params[:tarefa])
			flash[:notice] = "Tarefa #{@tarefa.nome} atualizada com sucesso"
			redirect_to tarefas_path
		else
			flash[:notice] = @tarefa.errors.messages
			redirect_to edit_tarefa_path
		end

	end

	def destroy
		@tarefa = Tarefa.find(params[:id])
		@tarefa.destroy
		flash[:notice] = "Voce destrui a tarefa #{@tarefa.nome}"
		redirect_to tarefas_path
	end

end
