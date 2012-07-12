class AddNomeToTarefas < ActiveRecord::Migration
  def up
  	add_column :tarefas, :nome, :string
  end

  def down
  	remove_column :tarefa, :nome
  end
end
