const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.get("/", (req, res) => {
        console.log("收到请求data1")
        // res.send("。。。。。")
        var sql1 = "SELECT title,pic,price,market_prices FROM tea_index_product";
        pool.query(sql1, [], (err, result) => {
            if (err) throw err;
            res.send({
                code: 2,
                msg: "OK",
                data1: result
            });
        });
    }),
    router.get("/carousel", (req, res) => {
        console.log("收到请求data2")
        var sql2 = "SELECT cid,img,title FROM tea_index_carousel";
        pool.query(sql2, [], (err, result) => {
            if (err) throw err;
            res.send({
                code: 2,
                msg: "OK",
                data2: result
            });
        });
    }),
    module.exports = router;