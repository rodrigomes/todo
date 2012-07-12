class TarefasController < ApplicationController

	def new
		@tarefa = Tarefa.new
	end

	def create
		@tarefa = Tarefa.new(params[:tarefa])
		@tarefa.save
	end

end
