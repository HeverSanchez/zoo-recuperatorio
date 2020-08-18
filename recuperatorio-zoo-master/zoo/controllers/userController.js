let fs = require('fs');
let DB = require('../database/models');



let userController = {
    // sequelize detail

    detail: function(req, res){
        DB.Animales.findAll(
            // {include: [{assocition: "animales"}]}
        )
            .then(function(animales){
                res.render('detail', {animales: animales})
            }),
            DB.Cuidadores.findAll()
                .then(function(cuidadores){
                    res.render('detail', {cuidadores: cuidadores})
                })
    },
    detailxid: function(req, res){
        DB.Animales.findByPk(req.params.id)
            .then(function(animal){
                res.render("detailxid", {animal: animal})
            })
    },
    crear: function(req, res){
        res.render('crear')
    },
    crearAnimal: function(req, res){
        res.render('crearanimal')
    },
    crearAnimalNuevo: function(req ,res){
        DB.Animales.create({
            nombre: req.body.nombre,
            altura: req.body.altura,
            peso: req.body.peso,
            foto: req.files[0].filename,
            preferenciaAlimento: req.body.preferenciaAlimento
        });
        
        res.redirect('/users/crearanimal');
    },
    crearCuidador: function(req, res){
        res.render('crearcuidador')
    },
    crearCuidadorNuevo: function(req ,res){
        DB.Cuidadores.create({
            nombre: req.body.nombre,
            apellido: req.body.apellido,
            avatar: req.files[0].filename
        });
        
        res.redirect('/users/crearcuidador');
    },
    delete: function(req, res){
        DB.Animales.destroy({
            where: {
                id: req.params.id
            }
        })

        res.redirect("/users/detail")
    }




    // DB JSON

    // 'crear' : function(req, res){
    //     res.render('crear');
    // },
    // 'detail' : function(req, res){

    //     let archivoJSON = fs.readFileSync('animales.json', {encoding: 'utf-8'});
    //     let datosA = JSON.parse(archivoJSON);

    //     res.render('detail', {'datosA': datosA});
    // },
    // 'crearAnimal': function(req, res){
    //     res.render('crearanimal')
    // },
    // 'crearAnimalNuevo': function(req, res){
    //     let datoAnimal = {
    //         nombre: req.body.nombre,
    //         altura: req.body.altura,
    //         peso: req.body.altura,
    //         alimento: req.body.alimento,
    //         foto: req.files[0].filename
    //     }
    //     //guarda despues
    //     let archivoAnimales = fs.readFileSync('animales.json', {encoding: 'utf-8'});

    //     let animales;
        
    //     if (archivoAnimales == ""){
    //         animales = [];
    //     } else {
    //         animales = JSON.parse(archivoAnimales);
    //     }

    //     animales.push(datoAnimal);

    //     let dAnimalesJSON = JSON.stringify(animales);
    //     fs.writeFileSync('animales.json', dAnimalesJSON);

    //     res.redirect("/users/detail");
    // }
};
module.exports = userController;