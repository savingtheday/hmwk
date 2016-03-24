  $(document).ready(function(){

    function set_cookies(){

      if (Cookies($('#cookie1').text())) {
        $('#cookie1-number').text(Cookies($('#cookie1').text())); //make the text reflect the number of clicks/cookies
        $('#cookie2-number').text(Cookies($('#cookie2').text()));
        $('#cookie3-number').text(Cookies($('#cookie3').text()));
      } else {
        Cookies.set($('#cookie1').text(), 0); //has to be initialized with something here or in html between span tags
        Cookies.set($('#cookie2').text(), 0);
        Cookies.set($('#cookie3').text(), 0);
      };

    }
    $('.cookie').click(function(){
      var cookie = $('#'+$(this).attr('id')).text();
      Cookies.set(cookie, parseInt(Cookies(cookie)) + 1); //make integer, add 1
      var num = Cookies(cookie);
      $('#' + $(this).attr('id') + '-number').text(num); //-number adds the id to unique classes in the html
    });
    set_cookies();

  });
