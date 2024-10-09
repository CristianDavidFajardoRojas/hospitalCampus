-- Insert specialties
INSERT INTO `especialidad` (`id`, `nombre`) VALUES
(1, 'Cardiología'),
(2, 'Pediatría'),
(3, 'Neurología'),
(4, 'Oncología'),
(5, 'Cirugía General'),
(6, 'Ginecología'),
(7, 'Dermatología'),
(8, 'Oftalmología'),
(9, 'Psiquiatría'),
(10, 'Ortopedia');

-- Insert hospitals
INSERT INTO `hospitales` (`nit`, `nombre`, `direccion`) VALUES
(100001, 'Hospital Central', 'Calle Principal 123'),
(100002, 'Clínica San José', 'Avenida Salud 456'),
(100003, 'Centro Médico Esperanza', 'Carrera 7 # 89-10');

-- Insert hospital communication
INSERT INTO `comunicacion_hospital` (`hospital_fk`, `tipo`, `contacto`) VALUES
(100001, '', '555-1234'),
(100002, '', '555-5678'),
(100003, '', '555-9012');

-- Insert patients
INSERT INTO `pacientes` (`cedula`, `nombre`, `apellido`, `genero`, `fecha_nacimiento`, `edad`) VALUES
(1001, 'Juan', 'Pérez', 'Masculino', '1980-05-15', 43),
(1002, 'María', 'González', 'Femenino', '1992-09-22', 31),
(1003, 'Carlos', 'Rodríguez', 'Masculino', '1975-12-03', 48),
(1004, 'Ana', 'Martínez', 'Femenino', '1988-07-10', 35),
(1005, 'Luis', 'Sánchez', 'Masculino', '1995-02-28', 28);

-- Insert patient communication
INSERT INTO `comunicacion_paci` (`paciente_fk`, `tipo`, `contacto`) VALUES
(1001, '', '555-1111'),
(1002, '', '555-2222'),
(1003, '', '555-3333'),
(1004, '', '555-4444'),
(1005, '', '555-5555');

-- Insert doctors (at least 10)
INSERT INTO `doctores` (`id`, `nombre_completo`, `genero`, `especialidad_fk`, `fecha_nacimiento`, `estado`) VALUES
(2001, 'Dr. Alejandro Gómez', 'Masculino', 1, '1975-03-10', 'Activo'),
(2002, 'Dra. Sofía Vargas', 'Femenino', 2, '1980-07-22', 'Activo'),
(2003, 'Dr. Ricardo Mendoza', 'Masculino', 3, '1972-11-05', 'Activo'),
(2004, 'Dra. Valentina Castro', 'Femenino', 4, '1978-09-18', 'Activo'),
(2005, 'Dr. Javier Herrera', 'Masculino', 5, '1976-06-30', 'Activo'),
(2006, 'Dra. Camila Rojas', 'Femenino', 6, '1982-04-12', 'Vacaciones'),
(2007, 'Dr. Andrés Morales', 'Masculino', 7, '1979-01-25', 'Activo'),
(2008, 'Dra. Isabella Ortiz', 'Femenino', 8, '1977-08-14', 'Activo'),
(2009, 'Dr. Daniel Jiménez', 'Masculino', 9, '1974-12-03', 'Incapacitado'),
(2010, 'Dra. Lucía Medina', 'Femenino', 10, '1981-05-20', 'Activo'),
(2011, 'Dr. Sebastián Ríos', 'Masculino', 1, '1973-10-08', 'Activo'),
(2012, 'Dra. Mariana Torres', 'Femenino', 2, '1983-02-17', 'Suspendido');

-- Insert personal (doctor-hospital relationships)
INSERT INTO `personal` (`hospital_fk`, `doctor_fk`) VALUES
(100001, 2001),
(100001, 2002),
(100001, 2003),
(100001, 2004),
(100002, 2005),
(100002, 2006),
(100002, 2007),
(100002, 2008),
(100003, 2009),
(100003, 2010),
(100003, 2011),
(100003, 2012);

-- Insert doctor communication
INSERT INTO `comunicacion_doctores` (`doctor_fk`, `tipo`, `contacto`) VALUES
(2001, '', '555-2001'),
(2002, '', '555-2002'),
(2003, '', '555-2003'),
(2004, '', '555-2004'),
(2005, '', '555-2005'),
(2006, '', '555-2006'),
(2007, '', '555-2007'),
(2008, '', '555-2008'),
(2009, '', '555-2009'),
(2010, '', '555-2010'),
(2011, '', '555-2011'),
(2012, '', '555-2012');

-- Insert notices
INSERT INTO `avisos` (`id`, `hospital_fk`, `nombre`, `descripcion`, `fecha`) VALUES
(1, 100001, 'Campaña de Vacunación', 'Vacunación gratuita contra la influenza', '2023-06-15 09:00:00'),
(2, 100002, 'Jornada de Donación de Sangre', 'Se necesitan donantes de todos los tipos de sangre', '2023-06-20 10:00:00'),
(3, 100003, 'Charla sobre Nutrición', 'Aprenda sobre hábitos alimenticios saludables', '2023-06-25 14:00:00');

-- Insert accounts
INSERT INTO `cuentas` (`id`, `paciente_fk`, `hospital_fk`, `precio`, `fecha`, `motivo`) VALUES
(1, 1001, 100001, 150.00, '2023-06-01 15:30:00', 'Consulta cardiología'),
(2, 1002, 100002, 200.00, '2023-06-02 11:45:00', 'Examen de laboratorio'),
(3, 1003, 100003, 300.00, '2023-06-03 09:15:00', 'Radiografía');

-- Insert medical history
INSERT INTO `historial_medico` (`id`, `paciente_fk`, `observaciones`) VALUES
(1, 1001, 'Paciente con hipertensión controlada. Se recomienda seguimiento cada 3 meses.'),
(2, 1002, 'Paciente con antecedentes de asma. Última crisis hace 2 años.'),
(3, 1003, 'Paciente diabético tipo 2. Control de glucemia cada 15 días.');

-- Insert population (doctor-patient relationships)
INSERT INTO `poblacion` (`doctor_fk`, `paciente_fk`) VALUES
(2001, 1001),
(2002, 1002),
(2003, 1003),
(2004, 1004),
(2005, 1005);