class TarefasController < ApplicationController

	def new
		@tarefa = Tarefa.new
	end

	def create
		puts "chegou no create"
	end

end
