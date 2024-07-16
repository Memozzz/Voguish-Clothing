function updateLoginButton() {
    var loginButton = document.querySelector('.btn-primary');
    if (window.innerWidth < 992) {
      loginButton.classList.add('d-lg-none');
    } else {
      loginButton.classList.remove('d-lg-none');
    }
  }
  window.addEventListener('resize', updateLoginButton);
  var collapseElementList = [].slice.call(document.querySelectorAll('.navbar-collapse'));
  var collapseList = collapseElementList.map(function (collapseEl) {
    return new bootstrap.Collapse(collapseEl);
  });


