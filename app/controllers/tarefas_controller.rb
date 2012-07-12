class TarefasController < ApplicationController

	def new
		@tarefa = Tarefa.new
	end

	def create
		@tarefa = Tarefa.new(params[:tarefa])
		unless @tarefa.save 
			redirect_to :action => new
		end
	end

end
