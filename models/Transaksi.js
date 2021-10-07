import Product from "./transaksiModel.js";

export const getAllTransaksi = async (req, res) => {
    const transaksi = await Product.findAll();
    res.json(transaksi);
}