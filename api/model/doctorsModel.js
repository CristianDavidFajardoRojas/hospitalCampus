const Conexion = require('../helper/conexion');
class Doctor extends Conexion {
    constructor(){
        super();
    }
    async getAllDoctors() {
        try{
            let driver = await this.conexion;
            const [results] = await driver.data.query(
                'SELECT * FROM doctores'
            );
            
            return {status: 200, message: 'Lista de todos los doctores', data: results}
        } catch (error) {
            throw new Error(JSON.stringify({status: 500, message: 'Ocurrio un error al obtener todos los doctores', data: error}))
        }
    }

    async getDoctorById(id) {
        try{
            let driver = await this.conexion;
            const [results] = await driver.data.query(
                'SELECT * FROM doctores WHERE id = ?', [id]
            );
            let resConsult = results.length != 0 ? {status: 200, message: 'Informacion del doctor encontrada existosamente.', data: results} : {status: 404, message: 'Doctor no registrado en la base de datos'};
            return resConsult
        } catch (error) {
            throw new Error(JSON.stringify({status: 500, message: 'Ocurrio un error al obtener el doctor.', data: error}))
        }
    }



    async insertDoctor(data) {
        try{
            let driver = await this.conexion;
            const [cantidadDocs] = await driver.data.query(
                'SELECT * FROM doctores'
            );   
            const results = await driver.data.query(
                'INSERT INTO doctores (id, nombre_completo, genero, especialidad_fk, fecha_nacimiento, estado) VALUES (?, ?, ?, ?, ?, ?)',
                [cantidadDocs.length + 1 ,data.nombre_completo, data.genero, data.especialidad_fk, data.fecha_nacimiento, data.estado]
            );
            return {status: 200, message: 'Informacion del doctor insertada existosamente.', data: results}
        } catch (error) {
            throw new Error(JSON.stringify({status: 500, message: 'Ocurrio un error al insertar el doctor.', data: error}))
        }
    }


    async deleteDoctor(id) {
        try{
            let driver = await this.conexion;
            const [results] = await driver.data.query(
                'DELETE FROM doctores WHERE id = ?',
                [id]
            );
            return {status: 200, message: 'Informacion del doctor eliminada existosamente.', data: results}
        } catch (error) {
            throw new Error(JSON.stringify({status: 500, message: 'Ocurrio un error al eliminar el doctor.', data: error}))
        }
    }



    async updateDoctor(id, data) {
        try{
            let driver = await this.conexion;
            const [[doctorOriginal]] = await driver.data.query(
                'SELECT * FROM doctores WHERE id = ?', [id]
            );
            const [results] = await driver.data.query(
                'UPDATE doctores SET nombre_completo = ?, genero = ?, especialidad_fk = ?, fecha_nacimiento = ?, estado = ? WHERE id = ?',
                [data.nombre_completo ? data.nombre_completo : doctorOriginal.nombre_completo, data.genero ? data.genero : doctorOriginal.genero, data.especialidad_fk ? data.especialidad_fk : doctorOriginal.especialidad_fk, data.fecha_nacimiento ? data.fecha_nacimiento : doctorOriginal.fecha_nacimiento, data.estado ? data.estado : doctorOriginal.estado, id]
            );
            return {status: 200, message: 'Informacion del doctor actualizada existosamente.', data: results}
        } catch (error) {
            throw new Error(JSON.stringify({status: 500, message: 'Ocurrio un error al insertar el doctor.', data: error}))
        }
    }








}

module.exports = Doctor;