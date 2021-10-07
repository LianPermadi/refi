const express = require ("express");
const { db } = require ("./config/db.js");
const { router } = require ("./routes/index.js");
const cors = require("cors");

const app = express();

app.get('/', (req,res) => res.send("respon nodejs sukses"));

app.use(express.urlencoded({extended: true}));

db.authenticate().then(() => 
    console.log("berhasil terkoneksi dengan database")
    );

app.use(cors());
app.use(express.json());

app.use('/transaksi', router);

app.listen(5000, () => console.log("port 5000 mantap"));

