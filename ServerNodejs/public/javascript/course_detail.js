const categories = document.querySelector(".categories");

const observer = new IntersectionObserver(
  (entries) => {
    entries.forEach((entry) => {
      let intro_Image = document.querySelector(".intro-img");
      if (entry.isIntersecting === false) {
        intro_Image.classList.add('m-fadeOut');
        intro_Image.classList.remove('m-fadeIn');
      } else {
        intro_Image.classList.add('m-fadeIn');
        intro_Image.classList.remove('m-fadeOut');
      }
    });
  },
  { threshold: [0] }
);

observer.observe(categories);
