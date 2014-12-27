class Comentario < ActiveRecord::Base
	belongs_to :respost, :dependent => :destroy
	belongs_to :user, :dependent => :destroy
end
