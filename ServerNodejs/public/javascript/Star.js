
const starsTotal=5;
function getRatings(numberRating, objectRating){
    const starPercentage=numberRating/starsTotal *100;
    document.querySelector(`.${objectRating} .stars-inner`).style.width=`${starPercentage}%`;
}