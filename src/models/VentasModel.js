const {connectToMysql} = require('../dbconnection');

class VentasModel
{
    static async consultar()
    {
        let db = await connectToMysql();
        let query = db('Ventas');
        return await query;
    }
    static async consultarPorId(id)
    {
        return await db('Ventas').where('id_venta', id);
    }
    static async insertar(datos) {
        let db = await connectToMysql();
        const result = await db('Ventas').insert(datos).returning('id_venta');
        return result[0];
    }
}

module.exports = VentasModel;