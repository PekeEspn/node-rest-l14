const {connectToMysql} = require('../dbconnection');

class UsuariosModel
{
    static async consultar()
    {
        let db = await connectToMysql();
        let query = db('Usuarios');
        return await query;
    }
    static async consultarPorId(id)
    {
        return await db('Usuarios').where('id_usuario', id);
    }
    static async insertar(datos) {
        let db = await connectToMysql();
        const result = await db('Usuarios').insert(datos).returning('id_usuario');
        return result[0];
    }
}

module.exports = UsuariosModel;