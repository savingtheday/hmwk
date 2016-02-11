$(document).ready(function(){
    // var element = $('h3')
    // $('form').append(element);
    //   $('form').submit(function(e){
    //     console.log(e);
    //     e.preventDefault(); //don't do your normal behavior
    //     $('header').append('<h3>new head</h3>');
    //   });

// $( "#submit" ).click(function() {
//   alert( "Handler for .click() called." );
// });

//e just stands in for an event; check this in the console for attributes
      $('#submit').click(function(e){
        var test = $('#password').val();
        if (test.length <=7){
          e.preventDefault();
          //$('#password').css('border', '10px solid red');
          $('#typing').html('Please use at least 7 letters')
         // location.reload();
        } else {
          $('#password').css('background-color', 'green');
          alert('what a nice password');

        }
      });




      // $('#password').keypress(function(e){
      //   if (e.currentTarget.value.length >= 7){
      //     $('#password').css('border', '10px solid green');
      //   }  else {
      //     $('#password').css('border', '10px solid red');
      //   }
      // });
});

