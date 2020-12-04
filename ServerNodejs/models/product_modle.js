const list = [
    {
        product_ID_rts: 'C1',
        deal_value: '-64%', 
        deal_image: 'images/productTesting.png' ,
        number_student: 1435435435,
        rating_stars: 4.8, 
        number_rating:'999', 
        title_product:'Ts. Lê Hoàng Phúc - Chiến lược tài chính',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Phúc',
        real_price:'499,999',
        reduce_price: '179,999'
    },
    {
        product_ID_rts: 'C2',
        deal_value: '-70%', 
        deal_image: 'images/product_ID2.jpg' ,
        number_student: 192012,
        rating_stars: 3.2, 
        number_rating:'46', 
        title_product:'Trọn bộ kiến thức về VBA Excel',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Nguyễn Anh Duy',
        real_price:'599,000',
        reduce_price: '179,999'
    },
    {
        product_ID_rts: 'C3',
        deal_value: '-74%', 
        deal_image: 'images/product_ID1.jpg' ,
        number_student: 133522,
        rating_stars: 0.5, 
        number_rating:'1', 
        title_product:'Thành thạo ngôn ngữ lập trình C++',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lưu Thiện Nhân',
        real_price:'699,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C4',
        deal_value: '-70%', 
        deal_image: 'images/product_ID3.jpg' ,
        number_student: 123634,
        rating_stars: 4.4, 
        number_rating:'100', 
        title_product:'VBA - Giải pháp tối ưu công việc trên Excel',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Sang',
        real_price:'599,000',
        reduce_price: '179,000'
    },
  ];

  const list_top8 = [
    {
        product_ID_rts: 'C5',
        deal_value: '-74%', 
        deal_image: 'images/product_ID5.png' ,
        number_student: 1435435435,
        rating_stars: 4.6, 
        number_rating:'999', 
        title_product:'Học ielts cùng tiến sĩ Gấu Mập',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Phúc',
        real_price:'699,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C6',
        deal_value: '-74%', 
        deal_image: 'images/product_ID6.png' ,
        number_student: 192012,
        rating_stars: 4.3, 
        number_rating:'46', 
        title_product:'Bí quyết giao tiếp để thành công',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Nguyễn Anh Duy',
        real_price:'699,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C7',
        deal_value: '-78%', 
        deal_image: 'images/product_ID7.png' ,
        number_student: 133522,
        rating_stars: 0.5, 
        number_rating:'1', 
        title_product:'Học Photoshop trọn bộ trong 7 ngày',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lưu Thiện Nhân',
        real_price:'799,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C8',
        deal_value: '-76%', 
        deal_image: 'images/product_ID8.png' ,
        number_student: 123634,
        rating_stars: 4.3, 
        number_rating:'100', 
        title_product:'Nền tảng tiếng Anh cho người mới bắt đầu',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Sang',
        real_price:'749,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C9',
        deal_value: '-74%', 
        deal_image: 'images/product_ID9.jpg' ,
        number_student: 1435435435,
        rating_stars: 4.6, 
        number_rating:'999', 
        title_product:'Học thiết kế đồ họa trọn bộ 30 ngày',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Phúc',
        real_price:'699,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C10',
        deal_value: '-70%', 
        deal_image: 'images/product_ID10.png' ,
        number_student: 192012,
        rating_stars: 4.6, 
        number_rating:'46', 
        title_product:'85 chuyên đề Excel cơ bản đến nâng cao',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Nguyễn Anh Duy',
        real_price:'599,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C11',
        deal_value: '-64%', 
        deal_image: 'images/product_ID11.png' ,
        number_student: 133522,
        rating_stars: 4.8, 
        number_rating:'1', 
        title_product:'Ts. Lê Thẩm Dương - Chiến lược tài chính',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lưu Thiện Nhân',
        real_price:'499,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C12',
        deal_value: '-50%', 
        deal_image: 'images/product_ID12.jpg' ,
        number_student: 123634,
        rating_stars: 4.8, 
        number_rating:'100', 
        title_product:'Nghệ thuật bán hàng đỉnh cao',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Sang',
        real_price:'599,000',
        reduce_price: '179,000'
    },
  ];

  const list_top8bs = [
    {
        product_ID_rts: 'C13',
        deal_value: '-74%', 
        deal_image: 'images/product_ID5.png' ,
        number_student: 1435435435,
        rating_stars: 4.6, 
        number_rating:'999', 
        title_product:'Học ielts cùng tiến sĩ Gấu Mập',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Phúc',
        real_price:'699,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C14',
        deal_value: '-74%', 
        deal_image: 'images/product_ID6.png' ,
        number_student: 192012,
        rating_stars: 4.3, 
        number_rating:'46', 
        title_product:'Bí quyết giao tiếp để thành công',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Nguyễn Anh Duy',
        real_price:'699,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C15',
        deal_value: '-78%', 
        deal_image: 'images/product_ID7.png' ,
        number_student: 133522,
        rating_stars: 0.5, 
        number_rating:'1', 
        title_product:'Học Photoshop trọn bộ trong 7 ngày',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lưu Thiện Nhân',
        real_price:'799,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C16',
        deal_value: '-76%', 
        deal_image: 'images/product_ID8.png' ,
        number_student: 123634,
        rating_stars: 4.3, 
        number_rating:'100', 
        title_product:'Nền tảng tiếng Anh cho người mới bắt đầu',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Sang',
        real_price:'749,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C17',
        deal_value: '-74%', 
        deal_image: 'images/product_ID9.jpg' ,
        number_student: 1435435435,
        rating_stars: 4.6, 
        number_rating:'999', 
        title_product:'Học thiết kế đồ họa trọn bộ 30 ngày',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Phúc',
        real_price:'699,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C18',
        deal_value: '-70%', 
        deal_image: 'images/product_ID10.png' ,
        number_student: 192012,
        rating_stars: 4.6, 
        number_rating:'46', 
        title_product:'85 chuyên đề Excel cơ bản đến nâng cao',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Nguyễn Anh Duy',
        real_price:'599,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C19',
        deal_value: '-64%', 
        deal_image: 'images/product_ID11.png' ,
        number_student: 133522,
        rating_stars: 4.8, 
        number_rating:'1', 
        title_product:'Ts. Lê Thẩm Dương - Chiến lược tài chính',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lưu Thiện Nhân',
        real_price:'499,000',
        reduce_price: '179,000'
    },
    {
        product_ID_rts: 'C20',
        deal_value: '-50%', 
        deal_image: 'images/product_ID12.jpg' ,
        number_student: 123634,
        rating_stars: 4.8, 
        number_rating:'100', 
        title_product:'Nghệ thuật bán hàng đỉnh cao',
        author_image:'images/BecomeInstructor/ltn.jpg',
        author_name:'Lê Hoàng Sang',
        real_price:'599,000',
        reduce_price: '179,000'
    },
  ];

  module.exports={
      all(){
          return list;
      },
      all_top8(){
          return list_top8;
      },
      all_top8bs(){
        return list_top8bs;
    }
  }