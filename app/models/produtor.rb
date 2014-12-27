class Produtor < ActiveRecord::Base
	has_many :filme_produtors, :dependent => :destroy
	has_many :filmes, :through => :filme_produtors, source: :filme
end
