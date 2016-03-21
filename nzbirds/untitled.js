



//our sound files

function Sound(name, url){
  this.name = name;
  this.url = url;
  this.audioElement = new Audio(src=url);
};


//how to play the sound files

function Jukebox(){

  this.trackList = [];

  this.addSound = function(sound){
    this.trackList.push(sound);
  }

  this.play = function(soundName){
    $(this.trackList).each(function(){
      if (this.name == soundName){
        if (this.audioElement.paused == true){
          this.audioElement.play();
        } else {
          this.audioElement.pause();
        }
      }
    });
  }

  this.stop = function(soundName){
    $(this.trackList).each(function(){
      if (this.name == soundName){
        this.audioElement.load();
      }
    });
  }



  // this.randomize = function(){
  //   $(this.trackList).each(function(){
  //     // randomize volumes of all sounds
  //     this.audioElement.volume = Math.random();
  //     // play a random subset of sounds
  //     var randomBoolean = Math.random() < 0.5;
  //     if(randomBoolean){
  //       this.audioElement.play();
  //     }
  //   });
  // }

};



//what happens when the page loads


$(document).ready(function(){

  fantailSound = new Sound(name="fantail", url="sounds/south-island-fantail.mp3")

  jukebox = new Jukebox;

  jukebox.addSound(fantailSound);



  //  jukebox buttons/methods


  $(".play").on("click", function(){
    var sound = $(this).attr("data-audio");
    jukebox.play(sound);
  });


  // $("#stop").on("click", function(){
  //   jukebox.stopAll();
  // });


  // $("#pause").on("click", function(){
  //   jukebox.pauseAll();
  // });

  // $("#random").on("click", function(){
  //   jukebox.randomize();
  // })


//final });
});
