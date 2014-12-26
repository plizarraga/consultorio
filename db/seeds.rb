# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Usuarios - password = 12345678
# u1 = Usuario.create({email: "test@test.com", encrypted_password: "$2a$10$Nafhvov8KYz9MirlciTsXujJrWD2M9o/wbN4OWL2GV2ebsxt0ioZ2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-12-25 21:23:01", last_sign_in_at: "2014-12-25 21:20:52", current_sign_in_ip: "::1", last_sign_in_ip: "::1", created_at: "2014-12-25 21:20:52", updated_at: "2014-12-25 21:23:01"})
u1 = Usuario.new
u1.email = 'test@test.com'
u1.password = '$2a$10$Nafhvov8KYz9MirlciTsXujJrWD2M9o/wbN4OWL2GV2ebsxt0ioZ2'
u1.encrypted_password = '$2a$10$Nafhvov8KYz9MirlciTsXujJrWD2M9o/wbN4OWL2GV2ebsxt0ioZ2'
u1.save!

# Pacientes
p1 = Paciente.create({ nombre: "James Douglas Morrison", correo_electronico: "james@james.com", edad: 28 })
p2 = Paciente.create({ nombre: "John Winston Ono Lennon", correo_electronico: "john@john.com", edad: 31 })
p3 = Paciente.create({ nombre: "James Marshall Hendrix", correo_electronico: "hendrix@hendrix.com", edad: 32 })
p4 = Paciente.create({ nombre: "Richie Kotzen", correo_electronico: "kotzen@kotzen.com", edad: 29 })
p5 = Paciente.create({ nombre: "Jason Eli Becker", correo_electronico: "becker@becker.com", edad: 28 })
p6 = Paciente.create({ nombre: "Muhammad Ali ", correo_electronico: "ali@ali.com", edad: 60 })
p7 = Paciente.create({ nombre: "Eddie Van Halen", correo_electronico: "eddie@eddie.com", edad: 58 })

# Citas
c1 = Cita.create({ paciente: p1, fecha: Date.new(2015,1,1), hora_inicial: Time.now, hora_final: Time.now, descripcion: "Limpieza" })
c2 = Cita.create({ paciente: p1, fecha: Date.new(2015,1,10), hora_inicial: Time.now, hora_final: Time.now, descripcion: "Revision general" })
c3 = Cita.create({ paciente: p1, fecha: Date.new(2015,1,20), hora_inicial: Time.now, hora_final: Time.now, descripcion: "Endodoncia" })
c4 = Cita.create({ paciente: p2, fecha: Date.new(2015,2,12), hora_inicial: Time.now, hora_final: Time.now, descripcion: "Endodoncia" })