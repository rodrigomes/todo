class Tarefa < ActiveRecord::Base
  attr_accessible :data_fim, :descricao, :responsavel, :nome

  validates_presence_of :responsavel

  belongs_to :projeto

end
