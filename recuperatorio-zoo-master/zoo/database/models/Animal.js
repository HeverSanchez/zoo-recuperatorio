const { sequelize } = require(".");

module.exports = (sequelize, dataType) => {
    let alias = "Animales";
    let cols = {
        id: {
            type: dataType.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        nombre: {
            type: dataType.STRING
        },
        altura: {
            type: dataType.INTEGER
        },
        peso: {
            type: dataType.INTEGER
        }
    };
    let config = {
        tableName: "animales",
        timestamps: false
    }

    const Animal = sequelize.define(alias, cols, config);

    // Animal.associate = function(models){
    //     Animal.belongsToMany(models.cuidadores,{
    //         as: 'cuidadores',
    //         through: 'animalescuidadores',
    //         foreignKey: 'animales_id',
    //         otherKey: 'cuidadores_id',
    //         timestamps: false
    //     });
    // }

    return Animal;
}