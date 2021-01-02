module.exports={
    getNumberOfItems(cart){
        let n=0;
        for (const item of cart)
        {
            n++;
        }
        return n;
    },
    add(cart,item){
        cart.push(item);
    },
}