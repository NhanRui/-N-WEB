const categoryModel=require('../models/product_modle');

module.exports=function(app){
    app.use(async function(req,res,next){
        res.locals.lcCategories=await categoryModel.all();
        next();
    })
}