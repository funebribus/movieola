class Topico < ActiveRecord::Base
	belongs_to :filme, :dependent => :destroy
	belongs_to :user, :dependent => :destroy
	has_many :resposts
end
