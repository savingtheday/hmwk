(function getOffTheStage (i) {
  setTimeout(function () {
    console.log("You have " + i + " seconds left.");
    if (--i) {
      getOffTheStage(i);
    }
    else {
      console.log("Get off the stage!!")
    }
  }, 1000);
})(10);
