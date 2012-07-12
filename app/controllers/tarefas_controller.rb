class TarefasController < ApplicationController

	def new
		@tarefa = Tarefa.new
	end

	def index
		@tarefas = Tarefa.all
	end

	def create
		@tarefa = Tarefa.new(params[:tarefa])
		if @tarefa.save
			flash[:notice] = "Tarefa criada com sucesso"
			redirect_to tarefas_path
		end
	end

end
