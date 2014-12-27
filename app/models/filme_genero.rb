class FilmeGenero < ActiveRecord::Base
	belongs_to :filme
	belongs_to :genero
end
