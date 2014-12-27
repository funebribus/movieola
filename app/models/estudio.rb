class Estudio < ActiveRecord::Base
	has_many :filme_estudios, :dependent => :destroy
	has_many :filmes, :through => :filme_estudios, source: :filme
end
