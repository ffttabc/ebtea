const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
    var sql="SELECT title,pic,price,market_prices FROM tea_index_product";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;  
        res.send({code:1,msg:"OK",data:result})
    })
})
module.exports=router;