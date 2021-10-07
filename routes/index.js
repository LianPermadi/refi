const express = require ("express");
const {getAllTransaksi, createTransaksi, getTransaksiById, updateTransaksi, deleteTransaksi } = require ("../controllers/Transaksi.js");

const router = express.Router();

router.get("/", getAllTransaksi);
router.get("/:id", getTransaksiById);
router.post("/", createTransaksi);
router.patch("/:id", updateTransaksi);
router.patch("/:id", deleteTransaksi);

module.exports = { router };