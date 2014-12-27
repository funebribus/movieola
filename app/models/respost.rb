class Respost < ActiveRecord::Base
	belongs_to :topico, :dependent => :destroy
	belongs_to :user, :dependent => :destroy
	has_many :comentarios
end
