class CreateTarefas < ActiveRecord::Migration
  def change
    create_table :tarefas do |t|	
      t.string :nome
      t.string :descricao
      t.date :data_fim
      t.string :responsavel

      t.timestamps
    end
  end
end
