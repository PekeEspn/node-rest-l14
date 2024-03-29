const VehiculosModel = require("../models/VehiculosModel");

class VehiculosController
{
    static async indexGet(req, res)
    {
        try{
            let data = await VehiculosModel.consultar();
        res.send(data);
        } catch(error){
            console.error(error)
        }
        
    }
    static async itemGet(req, res){
        let id = req.params.id;
        let data = await VehiculosModel.consultarPorId(id);
        res.send(data);
    }

    static async indexPost(req, res) {
        try {
            const newData = req.body;

            const insertedId = await VehiculosModel.insertar(newData);

            res.status(201)
            .header('Location', `/temas/${insertedId}`)
                .send({status: 201, message: 'Created'});
        } catch (error) {
            console.error(error);
            res.status(400).send({ errno: 400, error: 'Bad Request' });
        }
    }
}

module.exports = VehiculosController;