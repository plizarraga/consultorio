class Paciente < ActiveRecord::Base
	has_many :citas
end
