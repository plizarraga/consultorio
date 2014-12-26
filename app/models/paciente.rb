class Paciente < ActiveRecord::Base
	has_many :citas
	validates :nombre, presence: true
end
