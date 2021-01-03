const db = require('../utils/db');
module.exports={
    getPriceOfItems(cart){
        let n=0;
        for (const item of cart)
        {
            n+=+item.reduce_price;
        }
        return n;
    },
    getNumberOfItems(cart){
        let n=0;
        for (const item of cart)
        {
            //console.log(item);
            n++;
        }
        return n;
    },
    async add(cart,idU,item){
        cart.push(item);
        const sql=`INSERT favourite(user_id,course_id) VALUES ('${idU}','${item.course_id}')`;
        const [rows, fields] = await db.load(sql);
        return rows;
    },
    async getFaCartById(id){
        const sql=`SELECT c.course_id,c.course_name,c.intro_image, ROUND(c.price-c.price*c.deal_value/100,0) as reduce_price
        FROM favourite f join course c on f.course_id=c.course_id
        WHERE f.user_id='${id}'`
        const [rows, fields] = await db.load(sql);
        return rows;
    },
    async getFaItem(id){
        const sql=`SELECT course_id,course_name,intro_image,ROUND(price-price*deal_value/100,0) as reduce_price
        FROM course
        WHERE course_id='${id}'`;
        const [rows, fields] = await db.load(sql);
        return rows[0];
    },
    async removeByID(cart,idC, idU){
        const sql=`DELETE FROM favourite WHERE course_id='${idC}' AND user_id='${idU}'`;
        const [rows, fields] = await db.load(sql);
        let index=0;
        for (const i of cart)
        {
            if (i.course_id===idC)
            {
                break;
            }
            index++;
        }
        cart = cart.slice(0, index).concat(cart.slice(index + 1, cart.length))
        return rows;
    }
}