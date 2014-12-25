json.array!(@citas) do |cita|
  json.extract! cita, :id, :paciente_id, :fecha, :hora_inicial, :hora_final, :descripcion
  json.url cita_url(cita, format: :json)
end
