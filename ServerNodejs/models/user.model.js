const db = require('../utils/db');

module.exports ={
    async singleByEmail(email){
        const sql = `select * from user where email= '${email}'`;
        const [rows, fields] = await db.load(sql);
        if(rows.length === 0)
            return null;
        return rows[0];
    },

    async add(user){
        const [result, fields] = await db.add(user,'user');
        return result;
    }
}