$(function() {   
  $("#header").hide();
  $(window).scroll(function () {
      if ($(this).scrollTop() > 100) {
        $("#header").show();
      } else {
      }
  });
});