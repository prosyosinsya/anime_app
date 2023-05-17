document.addEventListener("turbo:load", function() {
  let hamburger = document.querySelector(".hamburger");
  hamburger.addEventListener("click", function(event) {
    event.preventDefault();
    let menu = document.querySelector(".dropdown-menu");
    menu.classList.toggle("active");
  });
});