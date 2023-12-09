const {connectToMysql} = require('../dbconnection');

class ServiciosModel
{
    static async consultar()
    {
        let db = await connectToMysql();
        let query = db('Servicios');
        return await query;
    }
    static async consultarPorId(id)
    {
        return await db('Servicios').where('id_servicio', id);
    }
    static async insertar(datos) {
        let db = await connectToMysql();
        const result = await db('Servicios').insert(datos).returning('id_servicio');
        return result[0];
    }
}

module.exports = ServiciosModel;