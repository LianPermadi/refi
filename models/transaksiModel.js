const Sequelize = require ("sequelize");

const { db } = require ("../config/db.js");


const Transaksi = db.define(
    `refi_pooling_transaksi1`, 
{
    moladin_user_id:{
        type: Sequelize.STRING,
    },
    master_leasing_id:{
        type: Sequelize.STRING,
    },
    branc_leasing_id:{
        type: Sequelize.STRING,
    },
    moladin_aso_id:{
        type: Sequelize.STRING,
    },
    id_transaksi:{
        type: Sequelize.STRING,
    },
    informasi_kendaraan:{
        type: Sequelize.STRING,
    },
    lokasi:{
        type: Sequelize.STRING,
    },
    dana_diajukan	:{
        type: Sequelize.STRING,
    },
    dana_dicairkan:{
        type: Sequelize.STRING,
    },
    tenor:{
        type: Sequelize.STRING,
    },
    cicilan:{
        type: Sequelize.STRING,
    },
    status:{
        type: Sequelize.STRING,
    },
    note:{
        type: Sequelize.STRING,
    },
    informasi_paket:{
        type: Sequelize.STRING,
    },
    bukti_golive:{
        type: Sequelize.STRING,
    },
},{
    freezeTableName: true,
})


module.exports = { Transaksi };