$(document).ready(

	function(){
		window.setInterval(tictoc, 1000);
	}
);

	function tictoc(){
		var deathClok = new Date;
		var hours = deathClok.getHours();
			if (hours > 12){
				hours = hours - 12
			}
			if (hours === 0){
				hours = 12
			}
		var minutes = deathClok.getMinutes();
			if (minutes < 10){
				innerHTML = + "0";
			}
			minutes = ( minutes < 10 ? "0" : "" ) + minutes;
			if (minutes % 2 == 0){
				$("body").removeClass("blueBox");
				$("body").addClass("purpleBox");
			}
			else{
				$("body").removeClass("purpleBox");
				$("body").addClass("blueBox");
			}
		var seconds = deathClok.getSeconds();
			seconds = ( seconds < 10 ? "0" : "" ) + seconds;
		var timeOfDay = ( hours > 11 ) ? "AM" : "PM";
		document.getElementById("hours").innerHTML = hours.toString() + ":";
		document.getElementById("minutes").innerHTML = minutes.toString() + ":";
		document.getElementById("seconds").innerHTML = seconds.toString();
		document.getElementById("morningNight").innerHTML = timeOfDay.toString();
	}

