class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :nome
      t.date :data_inicio
      t.date :data_fim
      t.string :cliente
      t.string :descricao

      t.timestamps
    end
  end
end
