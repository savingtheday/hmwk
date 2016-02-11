$(document).ready(function(){

  // var bgColorArray = ['blue','pink','yellow', 'red', 'orange'],
  //   selectBG = bgColorArray[Math.floor(Math.random() * bgColorArray.length)];

  // $('#hours').css('color', selectBG)

  function displayTime(){
    var date = new Date;
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var seconds = date.getSeconds();
    var milliseconds = date.getMilliseconds();

    $('#hours').text(hours);
    $('#minutes').text(format(minutes));
    $('#seconds').text(format(seconds));
    $('#milliseconds').text(milliseconds);

    ifMinOdd(minutes);
    randoHours(hours);
  }

  function format(value){
    if (value < 10){
      return '0' + value
    } else{
      return value;
    }
  }

  function ifMinOdd(min){
    if (min % 2 === 0) {
      $('#minutes').css('color', 'red');
    }
    else{
      $('#minutes').css('color', 'black');
    }
    if (min % 5 === 0) {
      $('#time').css('background-color', 'yellow');
    }
    else{
      $('#time').css('background-color', 'cyan');
    }
  }



  function randoHours(hrs){
    var ColorArray = ['blue','pink','yellow', 'red', 'orange'],
      select = ColorArray[Math.floor(Math.random() * ColorArray.length)];
      if (hrs < 30) {
      $('#hours').css('color', select);
      }
      else{
      }
  }


window.setInterval(displayTime, 1);
});


