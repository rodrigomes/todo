class Tarefa < ActiveRecord::Base
  attr_accessible :data_fim, :descricao, :responsavel
end
