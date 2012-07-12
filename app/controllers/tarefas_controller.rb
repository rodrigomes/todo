class TarefasController < ApplicationController

	def new
		@tarefa = Tarefa.new
	end

end
