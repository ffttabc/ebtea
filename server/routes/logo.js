const express = require("express");
const router = express.Router();
const pool = require("../pool");

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
    router.get("/family", (req, res) => {
        console.log("收到请求data2")
        var sql = "SELECT fid,fname FROM tea_index_family";
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