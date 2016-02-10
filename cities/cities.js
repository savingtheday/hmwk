var cities =["Warren", "Washington", "Wilkes Barre", "Williamsport", "York"]


function sevenLetters(howLong){
  return howLong.length < 7;
}

function finalAnswer() {
    document.getElementById("showTheAnswer").innerHTML = cities.filter(sevenLetters);
}




finalAnswer();





// var alpha = cities [0].length;
// var beta = cities [1].length;
// var delta = cities [2].length;
// var epsilon = cities [3].length;
// var fudge = cities [4].length;








// function sevenLetters(){
//   if(alpha < 7){
//     console.log(cities [0]);
//   };
//   if(beta < 7){
//     console.log(cities [1]);
//   };
//   if(delta < 7){
//     console.log(cities [2]);
//   };
//   if(epsilon < 7){
//     console.log(cities [3]);
//   };
//   if(fudge < 7){
//     console.log(cities [4]);
//   };
// }


// var answer = [];

// function sevenLetters(){
//   if(alpha < 7){
//     answer.push(cities [0]);
//   };
//   if(beta < 7){
//     answer.push(cities [1]);
//   };
//   if(delta < 7){
//     answer.push(cities [2]);
//   };
//   if(epsilon < 7){
//     answer.push(cities [3]);
//   };
//   if(fudge < 7){
//     answer.push(cities [4]);
//   };
// };

// sevenLetters();

// function showSevenLetters(){
//   //alert(answer);
//   document.getElementById('showTheAnswer').innerHTML = (answer);
// };

// showSevenLetters();



