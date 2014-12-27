class FilmeProdutor < ActiveRecord::Base
	belongs_to :filme
	belongs_to :produtor
end
