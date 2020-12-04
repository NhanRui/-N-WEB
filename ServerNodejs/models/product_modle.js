const list = [
    {
        product_ID_rts: 'C1',
        deal_value: '-50%', 
        deal_image: 'images/productTesting.png' ,
        number_student: 1435435435,
        rating_stars: 4.2, 
        number_rating:'999', 
        title_product:'Ts. Lê Hoàng Phúc - Chiến lược chạy deadline cùng team',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Phúc',
        real_price:'500,000',
        reduce_price: '249,999'
    },
    {
        product_ID_rts: 'C2',
        deal_value: '-50%', 
        deal_image: 'images/product_ID2.jpg' ,
        number_student: 192012,
        rating_stars: 3.2, 
        number_rating:'46', 
        title_product:'Ts. Nguyễn Anh Duy - Khóa học thiền',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Nguyễn Anh Duy',
        real_price:'999,000',
        reduce_price: '499,999'
    },
    {
        product_ID_rts: 'C3',
        deal_value: '-100%', 
        deal_image: 'images/product_ID1.jpg' ,
        number_student: 133522,
        rating_stars: 0.5, 
        number_rating:'1', 
        title_product:'Ts. Lưu Thiện Nhân - Chăm sóc sắc đẹp',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lưu Thiện Nhân',
        real_price:'500,000',
        reduce_price: '0'
    },
    {
        product_ID_rts: 'C4',
        deal_value: '-50%', 
        deal_image: 'images/product_ID3.jpg' ,
        number_student: 123634,
        rating_stars: 2.2, 
        number_rating:'100', 
        title_product:'Ts. Lê Tiến Đạt - Khóa học kinh doanh',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Sang',
        real_price:'500,000',
        reduce_price: '249,999'
    },
  ];

  module.exports={
      all(){
          return list;
      }
  }