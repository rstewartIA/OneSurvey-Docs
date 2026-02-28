document.addEventListener('DOMContentLoaded', function () {
  var el = document.getElementById('os-year');
  if (el) {
    el.textContent = new Date().getFullYear();
  }
});

