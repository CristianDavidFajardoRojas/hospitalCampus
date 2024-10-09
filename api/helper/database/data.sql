-- Especialidad (already inserted, but including for completeness)
INSERT INTO `especialidad` (`id`, `nombre`) VALUES
(1, 'Cardiología'),
(2, 'Pediatría'),
(3, 'Neurología'),
(4, 'Cirugía General'),
(5, 'Ginecología'),
(6, 'Oftalmología');

-- Hospitales
INSERT INTO `hospitales` (`nit`, `nombre`, `direccion`) VALUES
(100001, 'Hospital Central', 'Calle Principal 123'),
(100002, 'Clínica San Rafael', 'Avenida Salud 456'),
(100003, 'Centro Médico Esperanza', 'Carrera 7 # 89-10');

-- Comunicacion_hospital
INSERT INTO `comunicacion_hospital` (`hospital_fk`, `tipo`, `contacto`) VALUES
(100001, 'phone', '555-1234'),
(100002, 'email', 'info@sanrafael.com'),
(100003, 'phone', '555-5678');

-- Pacientes
INSERT INTO `pacientes` (`cedula`, `nombre`, `apellido`, `genero`, `fecha_nacimiento`, `edad`) VALUES
(1001, 'Ana', 'García', 'Femenino', '1990-05-15', 33),
(1002, 'Carlos', 'Rodríguez', 'Masculino', '1985-09-22', 38),
(1003, 'María', 'López', 'Femenino', '1978-03-10', 45),
(1004, 'Juan', 'Martínez', 'Masculino', '1995-11-30', 28),
(1005, 'Laura', 'Hernández', 'Femenino', '1982-07-18', 41);

-- Comunicacion_pacientes
INSERT INTO `comunicacion_pacientes` (`paciente_fk`, `tipo`, `contacto`) VALUES
(1001, 'phone', '555-1111'),
(1002, 'email', 'carlos@email.com'),
(1003, 'phone', '555-2222'),
(1004, 'email', 'juan@email.com'),
(1005, 'phone', '555-3333');

-- Doctores (already inserted, but including for completeness)
INSERT INTO `doctores` (`id`, `nombre_completo`, `genero`, `especialidad_fk`, `fecha_nacimiento`, `estado`) VALUES
(1, 'Juan Pérez', 'Masculino', 1, '1975-03-15', 'Activo'),
(2, 'María González', 'Femenino', 2, '1980-07-22', 'Activo'),
(3, 'Carlos Rodríguez', 'Masculino', 3, '1972-11-30', 'Vacaciones'),
(4, 'Ana Martínez', 'Femenino', 4, '1978-05-18', 'Activo'),
(5, 'Luis Sánchez', 'Masculino', 5, '1982-09-07', 'Activo'),
(6, 'Laura Fernández', 'Femenino', 6, '1976-01-25', 'Incapacitado'),
(7, 'Pedro Ramírez', 'Masculino', 1, '1979-08-12', 'Activo'),
(8, 'Sofia Torres', 'Femenino', 2, '1983-04-03', 'Suspendido'),
(9, 'Diego López', 'Masculino', 3, '1974-12-20', 'Activo'),
(10, 'Carmen Ruiz', 'Femenino', 4, '1981-06-09', 'Activo');

-- Personal
INSERT INTO `personal` (`hospital_fk`, `doctor_fk`) VALUES
(100001, 1),
(100001, 2),
(100001, 3),
(100002, 4),
(100002, 5),
(100002, 6),
(100003, 7),
(100003, 8),
(100003, 9),
(100003, 10);

-- Comunicacion_doctores
INSERT INTO `comunicacion_doctores` (`doctor_fk`, `tipo`, `contacto`) VALUES
(1, 'phone', '555-4444'),
(2, 'email', 'maria@hospital.com'),
(3, 'phone', '555-5555'),
(4, 'email', 'ana@hospital.com'),
(5, 'phone', '555-6666'),
(6, 'email', 'laura@hospital.com'),
(7, 'phone', '555-7777'),
(8, 'email', 'sofia@hospital.com'),
(9, 'phone', '555-8888'),
(10, 'email', 'carmen@hospital.com');

-- Avisos
INSERT INTO `avisos` (`id`, `hospital_fk`, `nombre`, `descripcion`, `fecha`) VALUES
(1, 100001, 'Campaña de Vacunación', 'Vacunación gratuita contra la gripe', '2023-09-15 09:00:00'),
(2, 100002, 'Mantenimiento', 'Cierre temporal del ala este por mantenimiento', '2023-09-20 14:00:00'),
(3, 100003, 'Nuevo Servicio', 'Apertura de la unidad de cuidados intensivos neonatales', '2023-09-25 10:00:00');

-- Cuentas
INSERT INTO `cuentas` (`id`, `paciente_fk`, `hospital_fk`, `precio`, `fecha`, `motivo`) VALUES
(1, 1001, 100001, 150.00, '2023-09-10 11:30:00', 'Consulta cardiología'),
(2, 1002, 100002, 300.00, '2023-09-12 15:45:00', 'Radiografía'),
(3, 1003, 100003, 500.00, '2023-09-14 09:15:00', 'Cirugía menor'),
(4, 1004, 100001, 200.00, '2023-09-16 14:00:00', 'Análisis de sangre'),
(5, 1005, 100002, 450.00, '2023-09-18 10:30:00', 'Consulta ginecología y ecografía');

-- Historial_medico
INSERT INTO `historial_medico` (`id`, `paciente_fk`, `observaciones`) VALUES
(1, 1001, 'Paciente con hipertensión controlada. Última revisión sin complicaciones.'),
(2, 1002, 'Fractura de brazo derecho en 2020. Recuperación completa.'),
(3, 1003, 'Alergia a penicilina. Asma leve controlada con inhalador.'),
(4, 1004, 'Sin antecedentes médicos relevantes. Última revisión general en buen estado.'),
(5, 1005, 'Embarazo de 20 semanas. Control prenatal sin complicaciones hasta la fecha.');

-- Poblacion
INSERT INTO `poblacion` (`doctor_fk`, `paciente_fk`) VALUES
(1, 1001),
(2, 1002),
(3, 1003),
(4, 1004),
(5, 1005),
(6, 1001),
(7, 1002),
(8, 1003),
(9, 1004),
(10, 1005);