class Projeto < ActiveRecord::Base
  attr_accessible :cliente, :data_fim, :data_inicio, :descricao, :nome

  validates_presence_of :nome

end
