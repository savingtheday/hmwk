$(document).ready(
	function(){
		$("#slideUpDemo").click(
			function() {
				$("#slideUpDemo").slideUp();
			}
		);

		$("#slideUpDemo").click(
			function() {
				$("#slideUpDemo").slideDown();
			}
		);

		$("#blur").click(
			function() {
				$("#blur").fadeOut(7000); //and hey look I changed the timing of the fade
			}
		);

  $( "#clickme" ).click(function() {
    $( "#wicked" ).animate({
      opacity: 0.25,
      right: "+=500",
      height: "20px",
    }, 5000, function() {
      // Animation complete.
    });
  });


				$("#mouseleave").mouseleave(
			function() {
				$("#mouseleave").fadeOut(500); //and hey look there's a mouse event that isn't clicking
			}
		);
	}
)


// //adding loops to jQuery

// $(document).ready(
// 	function (){

// 		$( ".lightbulb" ).on( "light:toggle", function( event ) {
//     	var light = $( this );
//     	if ( light.is( ".on" ) ) {
//         light.trigger( "light:off" );
//     	} else {
//         light.trigger( "light:on" );
//     		}
// 		}).on( "light:on", function( event ) {
//     	$( this ).removeClass( "off" ).addClass( "on" );
// 		}).on( "light:off", function( event ) {
// 	    $( this ).removeClass( "on" ).addClass( "off" );
// 		});

// 		$( ".switch, .clapper" ).click(function() {
//     	var room = $( this ).closest( ".room" );
//     	room.find( ".lightbulb" ).trigger( "light:toggle" );
// 	});

// 		$( "#master_switch" ).click(function() {
//     	var lightbulbs = $( ".lightbulb" );

//     // Check if any lightbulbs are on
//     	if ( lightbulbs.is( ".on" ) ) {
//         lightbulbs.trigger( "light:off" );
//     } else {
//         lightbulbs.trigger( "light:on" );
//     }
// });
// }
// )
