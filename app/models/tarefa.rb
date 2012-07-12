class Tarefa < ActiveRecord::Base
  attr_accessible :data_fim, :descricao, :responsavel

  validates_presence_of :responsavel

end
