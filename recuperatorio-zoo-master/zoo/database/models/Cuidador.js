const { sequelize } = require(".");

module.exports = (sequelize, dataType) => {
    let alias = "Cuidadores";
    let cols = {
        id: {
            type: dataType.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        nombre: {
            type: dataType.STRING
        },
        apellido: {
            type: dataType.STRING
        }
    };
    let config = {
        tableName: "cuidadores",
        timestamps: false
    }

    const Cuidador = sequelize.define(alias, cols, config);

    // Cuidador.associate = function(models){
    //     Cuidador.belongsToMany(models.animales,{
    //         as: 'animales',
    //         through: 'animalescuidadores',
    //         foreignKey: 'cuidadores_id',
    //         otherKey: 'animales_id',
    //         timestamps: false
    //     });
    // }

    return Cuidador;
}