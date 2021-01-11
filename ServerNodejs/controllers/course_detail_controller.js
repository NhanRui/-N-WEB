const express = require("express");
const course_detail_Model = require("../models/course_detail_Model");
const courses_detail_Model = require("../models/course_detail_Model");
const categoryModel = require('../models/product_modle');
const menuCategory=require('../models/category-menu.model');

const router = express.Router();

router.get("/le-tham-duong", (req, res) => {
  const returnObject = courses_detail_Model.all();
  res.render("partials/course_detail", {
    object: returnObject,
    layout: 'CourseDetail.hbs',
  });
});

router.get("/course-detail/:id", async function (req, res) {
  const shopping_list=req.session.shopCart;
  const menuList=await menuCategory.getCateMenu();
  const submenuList=await menuCategory.getCateSubMenu();
  const allListMenu=[];
  const items=req.session.cart;
  for (const i of menuList)
  {
    const menu_list=await categoryModel.allById(i.category_id);
    categoryModel.checkIsHaving(items,menu_list);
    const item={
      menu: i.category_id,
      name: i.category_name,
      submenu: [],
      top4_course_menu: menu_list
    };
    allListMenu.push(item);
  }

  for (const j of submenuList)
  {
    for (i=0;i<allListMenu.length;i++)
    {
      if (allListMenu[i].menu===j.parent_id)
      {
        allListMenu[i].submenu.push(j);
      }
    }
  }

  let id = req.params.id;
  const returnObject = courses_detail_Model.all();

  const course_detail = await courses_detail_Model.singleFromSql(id);
  const lecturer = await courses_detail_Model.course_lecturer(id);

  let new_price = (course_detail[0].price * course_detail[0].deal_value / 100);

  const [main, parent] = await course_detail_Model.course_cate(id);

  const chapters = await course_detail_Model.course_chapter(id);
  const chapter_name = [];
  const videos = [];
  for (const property of chapters) {
    chapter_name.push({chapter_name : property.chapter_name, chapter_number : property.chapter_number});
    videos.push({video_name : property.video_name, url : property.url, video_number : property.video_number, chapter_number : property.chapter_number});
  }
  let lesson = chapter_name.filter(function({chapter_number}) {
    return !this.has(chapter_number) && this.add(chapter_number);
  }, new Set)

  const comments = await course_detail_Model.course_comment(id);
  for (const property of comments) {
    let user = await course_detail_Model.course_commentator(property.user_id);
    property['user_name'] = user.name;
    property['user_avatar'] = user.avatar;
  }
  console.log(comments)

  res.render('partials/course_detail', {
    layout: 'CourseDetail.hbs',
    object: returnObject,
    course_detail: course_detail[0],
    new_price,
    lecturer : lecturer[0],
    main,
    parent,
    videos,
    lesson,
    comments,
    shopping_list,
    items,
    menuList: menuList,
    empty_menu: menuList.length!==0,
    allListMenu: allListMenu,
  })
})

module.exports = router;