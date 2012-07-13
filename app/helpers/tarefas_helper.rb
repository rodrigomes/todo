module TarefasHelper

	def link_para_o_projeto(tarefa)
		return "sem projeto" if tarefa.projeto.nil?
		link_to tarefa.nome_do_projeto , projeto_path(tarefa.projeto)
	end

end
