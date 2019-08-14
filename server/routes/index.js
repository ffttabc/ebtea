const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.get("/", (req, res) => {
        console.log("收到请求data1")
        // res.send("。。。。。")
        var sql = "SELECT title,pic,price,market_prices FROM tea_index_product";
        pool.query(sql, [], (err, result) => {
            if (err) throw err;
            res.send({
                code: 2,
                msg: "OK",
                data: result
            });
        });
    }),
    router.get("/carousel", (req, res) => {
        console.log("收到请求data2")
        var sql = "SELECT cid,img,title FROM tea_index_carousel";
        pool.query(sql, [], (err, result) => {
            if (err) throw err;
            res.send({
                code: 2,
                msg: "OK",
                data: result
            });
        });
    }),
    router.get("/logo", (req, res) => {
        console.log("收到请求data2")
        var sql = "SELECT gid,img,title FROM tea_index_logo";
        pool.query(sql, [], (err, result) => {
            if (err) throw err;
            res.send({
                code: 2,
                msg: "OK",
                data: result
            });
        });
    }),
    module.exports = router;