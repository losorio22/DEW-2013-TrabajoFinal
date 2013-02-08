class Torneo < ActiveRecord::Base
	belongs_to :local
	has_many :torneos, :through => :local_torneo
end
