const english=document.getElementById("category-1");
const english_menu=document.getElementById("english-menu");
const ngoai_ngu_text=document.getElementById("ngoai-ngu");

english.addEventListener("mouseover", function(event){
  english.style.background="rgb(243, 241, 241)";
  english.style.borderLeft="2px solid rgba(255, 0, 0, 0.76)";
  ngoai_ngu_text.style.color="rgba(255, 0, 0, 0.76)";
  english_menu.style.display="block";
})

english.addEventListener("mouseout",function(event){
  english_menu.style.display="none";
  english.style.background="none";
  english.style.borderLeft="none";
  ngoai_ngu_text.style.color="rgb(124, 121, 121)";
  english_menu.style.display="none";
})

english_menu.addEventListener("mouseover", function(event){
  english_menu.style.display="block";
  english.style.background="rgb(243, 241, 241)";
  english.style.borderLeft="2px solid rgba(255, 0, 0, 0.76)";
  ngoai_ngu_text.style.color="rgba(255, 0, 0, 0.76)";
})

english_menu.addEventListener("mouseout", function(event){
  english_menu.style.display="none";
  english.style.background="none";
  english.style.borderLeft="none";
  ngoai_ngu_text.style.color="rgb(124, 121, 121)";
})

const music=document.getElementById("category-2");
const music_menu=document.getElementById("music-menu");
const am_nhac_text=document.getElementById("am-nhac");

music.addEventListener("mouseover", function(event){
  music.style.background="rgb(243, 241, 241)";
  music.style.borderLeft="2px solid rgba(255, 0, 0, 0.76)";
  am_nhac_text.style.color="rgba(255, 0, 0, 0.76)";
  music_menu.style.display="block";
})

music.addEventListener("mouseout",function(event){
  music_menu.style.display="none";
  music.style.background="none";
  music.style.borderLeft="none";
  am_nhac_text.style.color="rgb(124, 121, 121)";
  music_menu.style.display="none";
})

music_menu.addEventListener("mouseover", function(event){
  music_menu.style.display="block";
  music.style.background="rgb(243, 241, 241)";
  music.style.borderLeft="2px solid rgba(255, 0, 0, 0.76)";
  am_nhac_text.style.color="rgba(255, 0, 0, 0.76)";
})

music_menu.addEventListener("mouseout", function(event){
  music_menu.style.display="none";
  music.style.background="none";
  music.style.borderLeft="none";
  am_nhac_text.style.color="rgb(124, 121, 121)";
})

const IT=document.getElementById("category-3");
const IT_menu=document.getElementById("IT-menu");
const IT_text=document.getElementById("IT");

IT.addEventListener("mouseover", function(event){
  IT.style.background="rgb(243, 241, 241)";
  IT.style.borderLeft="2px solid rgba(255, 0, 0, 0.76)";
  IT_text.style.color="rgba(255, 0, 0, 0.76)";
  IT_menu.style.display="block";
})

IT.addEventListener("mouseout",function(event){
  IT_menu.style.display="none";
  IT.style.background="none";
  IT.style.borderLeft="none";
  IT_text.style.color="rgb(124, 121, 121)";
  IT_menu.style.display="none";
})

IT_menu.addEventListener("mouseover", function(event){
  IT_menu.style.display="block";
  IT.style.background="rgb(243, 241, 241)";
  IT.style.borderLeft="2px solid rgba(255, 0, 0, 0.76)";
  IT_text.style.color="rgba(255, 0, 0, 0.76)";
})

IT_menu.addEventListener("mouseout", function(event){
  IT_menu.style.display="none";
  IT.style.background="none";
  IT.style.borderLeft="none";
  IT_text.style.color="rgb(124, 121, 121)";
})