const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.get("/", (req, res) => {
        console.log("收到请求data2")
        var sql = "SELECT gid,img,title FROM tea_index_logo";
        pool.query(sql, [], (err, result) => {
            if (err) throw err;
            // console.log(result)
            res.send({
                code: 2,
                msg: "OK",
                data: result
            });
        });
    }),
    router.get("/f", (req, res) => {
        console.log("收到请求data1")
        var sql= "SELECT fid,fname FROM tea_laptop_family";
        pool.query(sql, [], (err, result) => {
            if (err) throw err;
            // console.log(result)
            res.send({
                code: 2,
                msg: "OK",
                data: result
            });
        });
    }),
    module.exports = router;