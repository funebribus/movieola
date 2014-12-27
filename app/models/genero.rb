class Genero < ActiveRecord::Base
	has_many :filme_generos, :dependent => :destroy
	has_many :filmes, :through => :filme_generos, source: :filme
end
