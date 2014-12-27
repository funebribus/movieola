class Ator < ActiveRecord::Base
	has_many :filme_ators, :dependent => :destroy
	has_many :filmes, :through => :filme_ators, source: :filme
end
