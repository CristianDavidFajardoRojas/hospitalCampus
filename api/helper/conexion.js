const mysql = require('mysql2/promise')
class Conexion {
    get conexion() {
        return mysql.createConnection({
            host: 'localhost',
            user: 'campus2023',
            password: 'campus2023',
            port: 3306,
            database: 'hospital'
        }).then(res => {
            return {status: 200, message:'¡Conexion Establecida Correctamente!', data: res}
        }).catch(error=>{
            throw new Error(JSON.stringify({status: 500, message:'¡Error en la conexion 😔!', message: err})) 
        })
    }
}
