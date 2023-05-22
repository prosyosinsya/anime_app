document.addEventListener("turbo:load", () => {
  let hamburger = document.querySelector(".hamburger");
  hamburger.addEventListener("click", (e) => {
    e.preventDefault();
    let menu = document.querySelector(".dropdownMenu");
    menu.classList.toggle("active");
  });
});