const Conexion = require('../helper/conexion');
class Doctor extends Conexion {
    constructor(){
        super();
    }
    async getAllDoctors() {
        try{
            let driver = this.conexion;
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
            let driver = this.conexion;
            const [results] = await driver.data.query(
                'SELECT * FROM doctores WHERE id = ?', [id]
            );
            return {status: 200, message: 'Informacion del doctor encontrada existosamente.', data: results}
        } catch (error) {
            throw new Error(JSON.stringify({status: 500, message: 'Ocurrio un error al obtener el doctor.', data: error}))
        }
    }
}

module.exports = Doctor;