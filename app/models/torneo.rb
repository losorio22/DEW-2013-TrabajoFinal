class Torneo < ActiveRecord::Base
	belongs_to :local
	has_many :torneo, :through => :local_torneo
end
