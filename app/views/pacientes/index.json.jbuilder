json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nombre, :correo_electronico, :edad
  json.url paciente_url(paciente, format: :json)
end
