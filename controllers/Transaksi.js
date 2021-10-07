const { Transaksi } = require ('../models/transaksiModel.js');

const getAllTransaksi = async (req, res) => {
    try {
        const transaksi = await Transaksi.findAll();
    res.json(transaksi);
    } catch (error) {
        res.json({ message: error.message})
    }
}


    // try {
    //         const moladin_user_id = req.body.moladin_user_id;
    //         const master_leasing_id = req.body.master_leasing_id;
    //         const branc_leasing_id = req.body.branc_leasing_id;
    //         const moladin_aso_id = req.body.moladin_aso_id;
    //         const id_transaksi = req.body.id_transaksi;
    //         const informasi_kendaraan = req.body.informasi_kendaraan;
    //         const lokasi = req.body.lokasi;
    //         const dana_diajukan = req.body.dana_diajukan;
    //         const dana_dicairkan = req.body.dana_dicairkan;
    //         const tenor = req.body.tenor;
    //         const cicilan = req.body.cicilan;
    //         const status = req.body.status;
    //         const note = req.body.note;
    //         const informasi_paket = req.body.informasi_paket;
    //         const bukti_golive = req.body.bukti_golive;

    //     const newUser = new Transaksi(req.body,{
            
    //         moladin_user_id, 
    //         master_leasing_id, 
    //         branc_leasing_id, 
    //         moladin_aso_id, 
    //         id_transaksi, 
    //         informasi_kendaraan, 
    //         lokasi, 
    //         dana_diajukan,
    //         dana_dicairkan,
    //         tenor, 
    //         cicilan, 
    //         status, 
    //         note, 
    //         informasi_paket, 
    //         bukti_golive
    // });
    
    // await newUser.save();
    // res.json(newUser);
    // } catch (error) {
    //     res.json({ message: error.message})
    // }
    const createTransaksi = async (req, res) => {
    try {
        const transaksi = await Transaksi.create(req.body);
        res.json(transaksi)
    } catch (error) {
        res.json({message: error.massage})
    }
}
const getTransaksiById = async (req, res) => {
    try {
        const transaksi = await Transaksi.findAll({
            where: {
                id: req.params.id
            }
        })
            res.json(transaksi[0]);
        }catch(error){
            res.json({massage: error.massage});
        }
    }

const updateTransaksi = async (req, res) => {
    try {
        await Transaksi.update(req.body, {
            where:{
                id: req.params.id
            }
        })
            res.json({
                "massage": "Product Updated"
            });
        }catch(error){
            res.json({massage: error.massage});
        }
    }

    const deleteTransaksi = async (req, res) => {
        try {
            await Transaksi.destroy({
                where:{
                    id: req.params.id
                }
            })
                res.json({
                    "massage": "Product Updated"
                });
            }catch(error){
                res.json({massage: error.massage});
            }
        }
    
module.exports = { getAllTransaksi, createTransaksi, updateTransaksi, getTransaksiById, deleteTransaksi };