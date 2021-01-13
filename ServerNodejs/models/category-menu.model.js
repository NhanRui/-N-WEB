const db = require('../utils/db');

module.exports={
    async getCateMenu(){
        const sql = `SELECT category_id,category_name , COUNT(course_name) as on_top
        FROM(
            SELECT c1.course_name,c2.parent_id
            FROM course c1 join category c2 on c1.categoty_id=c2.category_id
            ) temp1 right join (
                                                    SELECT category_id,category_name
                                                                FROM category
                                                                where ISNULL(parent_id)
                                                    ) as temp2 on temp1.parent_id=temp2.category_id
        GROUP BY category_id
        ORDER BY on_top DESC`;
        const [rows, fields] = await db.load(sql);
        return rows;
    },
    async getCateSubMenu(){
        const sql = `SELECT *
        FROM category
        where ISNULL(parent_id)=false`;
        const [rows, fields] = await db.load(sql);
        return rows;
    },
}