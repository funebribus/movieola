class FilmeAtor < ActiveRecord::Base
	belongs_to :filme
	belongs_to :ator
end
