class AddProjetoIdToTarefas < ActiveRecord::Migration
  def change
  	add_column :tarefas, :projectid, :integer
  end
end
