const express = require('express');
const vd_info=require('../models/video_site.mode');

const router = express.Router();

router.get('/:id/:chapter/:video', async function (req, res) {
  const course_id=req.params.id;
  const chapter=req.params.chapter;
  const video=req.params.video;
  list_infor=await vd_info.getInfor(course_id);
  list_chapter=await vd_info.getChapter(course_id);
  list_video=await vd_info.getListVideo(course_id);
  vd_info.setSTTVideo(list_video);
  url=await vd_info.get_url(course_id,chapter,video);
  prevVideo=vd_info.getPreviousVideo(chapter,video,list_video);
  nextVideo=vd_info.getNextVideo(chapter,video,list_video);
  curVideo=vd_info.getCurrentVideo(chapter,video,list_video);
  allChapter=[];
  for (const i of list_chapter)
  {
    const item={
      list_id: i.list_id,
      chapter_number: i.chapter_number,
      chapter_name: i.chapter_name,
      course_id: i.course_id,
      list_video: []
    }
    allChapter.push(item);
  }

  for (const i of list_video)
  {
    for (j=0;j<allChapter.length;j++)
    {
      if (allChapter[j].list_id === i.list_id)
      {
        allChapter[j].list_video.push(i)
      }
    }
  }
  res.render('layouts/video_site', {
      list_infor: list_infor,
      allChapter: allChapter,
      link: url,
      prevVideo: prevVideo,
      nextVideo: nextVideo,
      currentVideo: curVideo,
      layout: "video_site.hbs"
  });
})


module.exports = router;  