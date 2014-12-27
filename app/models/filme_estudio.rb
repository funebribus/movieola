class FilmeEstudio < ActiveRecord::Base
	belongs_to :filme
	belongs_to :estudio
end
