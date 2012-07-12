class TarefasController < ApplicationController

	def new
		@tarefa = Tarefa.new
	end

	def index
		@tarefas = Tarefa.all
	end

	def create
		@tarefa = Tarefa.new(params[:tarefa])
		unless @tarefa.save 
			redirect_to new_tarefa_path
		end
	end

end
