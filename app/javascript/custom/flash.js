document.addEventListener("load", () => {
  let flash = document.querySelector(".notice");
  flashToggle();
  setTimeout(flashToggle, 3000);
  function flashToggle() {
    flash.classList.toggle("hidden");
  }
});