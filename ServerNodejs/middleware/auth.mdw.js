module.exports = {
    auth(req,res,next){
        if(req.session.auth===false){
            req.session.retUrl = req.originalUrl;
            return res.redirect('/account/login');
        }
        next();
    },

    authUser(req,res,next){
        if(req.session.auth===false || req.session.authUser.role!==0){
            req.session.retUrl = req.originalUrl;
            return res.redirect('/account/login');
        }
        next();
    },

    authLecturer(req,res,next){
        if(req.session.auth===false || req.session.authUser.role!==1){
            req.session.retUrl = req.originalUrl;
            return res.redirect('/account/login');
        }
        next();
    }
}