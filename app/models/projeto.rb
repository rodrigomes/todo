#enconding: utf-8
class Projeto < ActiveRecord::Base
  attr_accessible :cliente, :data_fim, :data_inicio, :descricao, :nome

  validates_presence_of :nome
  validate :validate_presence_of_data_inicio_menor_igual_a_data_fim
  validate :primeira_letra_maiuscula
  validates :nome, :uniqueness => true

  private
  
  def validate_presence_of_data_inicio_menor_igual_a_data_fim
  	if data_inicio > data_fim
  		errors.add(:data_inicio, "nao pode ser maior do que data fim")
  	end
  end

  def primeira_letra_maiuscula
  	errors.add(:nome, "Primeira letra do nome deve ser maiuscula") unless nome =~ /^[A-Z].*/
  end

end
