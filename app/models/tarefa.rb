class Tarefa < ActiveRecord::Base
  attr_accessible :data_fim, :descricao, :responsavel, :nome, :projeto_id

  validates_presence_of :responsavel

  belongs_to :projeto

end
