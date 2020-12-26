const db = require('../utils/db');

module.exports ={
    async category(){
        const sql = `select * from category where parent_id is null`;
        const [rows, fields] = await db.load(sql);
        if(rows.length === 0)
            return null;
        return rows;
    },
    async sub_category(cat_id){
        const sql = `select * from category where parent_id= ${cat_id}`;
        const [rows, fields] = await db.load(sql);
        if(rows.length === 0)
            return null;
        return rows;
    },

    async add(course){
        const [result, fields] = await db.add(course,'course');
        return result;
    }
}