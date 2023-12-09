const {connectToMysql} = require('../dbconnection');

class VehiculosModel
{
    static async consultar()
    {
        let db = await connectToMysql();
        let query = db('Vehiculos');
        return await query;
    }
    static async consultarPorId(id)
    {
        return await db('Vehiculos').where('id_vehiculo', id);
    }
    static async insertar(datos) {
        let db = await connectToMysql();
        const result = await db('Vehiculos').insert(datos).returning('id_vehiculo');
        return result[0];
    }
}

module.exports = VehiculosModel;