class Cita < ActiveRecord::Base
	belongs_to :paciente
	validates :paciente_id, :fecha, :hora_inicial, :hora_final, presence: true
end
