const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/details",(req,res)=>{
    var lid=req.query.lid;
    var output={
        product:{},
        specs:[],
         pics:[],
    }
    if(lid!==undefined){
        var sql1="SELECT lid,family_id,title,subtitle,price,market_prices,spec,tname,tclass,suitable,space,name,scope,cases,texture,color,weight,area,pack,code,pug,author,capacity,craft,shape,choose,stove, configuration FROM tea_laptop where lid=?";
        pool.query(sql1,[lid],(err,result)=>{
            if(err) throw err;  
            output.product=result[0];
                 var  family_id=output.product["family_id"];
                 var sql2="SELECT spec,lid FROM  tea_laptop WHERE family_id=?";
                pool.query(sql2,[family_id],(err,result)=>{
                if(err) throw err;  
                output.spec=result;
                        var sql3="select * from tea_laptop_pic where laptop_id=?"
                        pool.query(sql3,[lid],(err,result)=>{
                        if(err) throw err; 
                        output.pics=result;
                         res.send(output.product);
                        })
                    })
             })
    }
})
module.exports=router;