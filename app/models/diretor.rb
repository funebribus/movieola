class Diretor < ActiveRecord::Base
	has_many :filme_diretors, :dependent => :destroy
	has_many :filmes, :through => :filme_diretors, source: :filme
end
