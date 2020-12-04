
const starsTotal=5;
function getRatings(numberRating){
    const starPercentage=numberRating/starsTotal *100;
    document.querySelector(`.stars-inner`).style.width=`${starPercentage}%`;
}