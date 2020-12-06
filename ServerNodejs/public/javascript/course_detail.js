window.addEventListener('scroll', (e) => {
    if (document.body.scroll < 10)
        document.getElementById('intro-img').style.display = 'none';
    else
        document.getElementById('intro-img').style.display = 'block';
});