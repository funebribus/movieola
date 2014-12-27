class Filme < ActiveRecord::Base
	has_many :filme_ators, :dependent => :destroy
	has_many :ators, :through => :filme_ators

	has_many :filme_generos, :dependent => :destroy
	has_many :generos, :through => :filme_generos

	has_many :filme_diretors, :dependent => :destroy
	has_many :diretors, :through => :filme_diretors

	has_many :filme_estudios, :dependent => :destroy
	has_many :estudios, :through => :filme_estudios

	has_many :filme_produtors, :dependent => :destroy
	has_many :produtors, :through => :filme_produtors

	has_many :topicos
end