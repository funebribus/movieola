class FilmeDiretor < ActiveRecord::Base
	belongs_to :filme
	belongs_to :diretor
end
