function Sound(name, url){ // sound objects have name, url, audio
  this.name = name;
  this.url = url;
  this.audioElement = new Audio(src=url);
}

function Jukebox(){

  this.soundList = []; // collection of sound objects

  this.addSound = function(sound){ // add song to collection
    this.soundList.push(sound);
  }

  this.play = function(soundName){
    $(this.soundList).each(function(){
      if (this.name == soundName){ // play if not playing, else pause
        if (this.audioElement.paused == true){
          this.audioElement.play();
        } else {
          this.audioElement.pause();
        }
      }
    });
  }


  this.isPaused = function(soundName){ // return pause state
    var paused = false;
    $(this.soundList).each(function(){
      if (this.name == soundName){
        paused = this.audioElement.paused;
        return false
        }
    });
    return paused;
  }


  this.toggleLoop = function(soundName, loop){ // set looping/repeating, loop argument is boolean
    $(this.soundList).each(function(){
      if (this.name == soundName){
        this.audioElement.loop = loop;
      }
    });
  }

};

$(document).ready(function(){

  fantailSound = new Sound(name="fantail", url="sounds/south-island-fantail.mp3")
  grebeSound = new Sound(name="grebe", url="sounds/southern-crested-grebe-song.mp3")
  bellbirdSound = new Sound(name="bellbird", url="sounds/bellbird-male.mp3")
  bitternSound = new Sound(name="bittern", url="sounds/australasian-bittern.mp3")
  stiltSound = new Sound(name="stilt", url="sounds/black-stilt.mp3")
  blueduckSound = new Sound(name="blueduck", url="sounds/blue-duck.mp3")
  warblerSound = new Sound(name="warbler", url="sounds/grey-warbler.mp3")
  kakaSound = new Sound(name="kaka", url="sounds/kaka.mp3")



  jukebox = new Jukebox;

  jukebox.addSound(fantailSound);
  jukebox.addSound(grebeSound);
  jukebox.addSound(bellbirdSound);
  jukebox.addSound(bitternSound);
  jukebox.addSound(stiltSound);
  jukebox.addSound(blueduckSound);
  jukebox.addSound(warblerSound);
  jukebox.addSound(kakaSound);



  jukebox.toggleLoop('fantail', true);
  jukebox.toggleLoop('grebe', true);
  jukebox.toggleLoop('bellbird', true);
  jukebox.toggleLoop('bittern', true);
  jukebox.toggleLoop('stilt', true);
  jukebox.toggleLoop('blueduck', true);
  jukebox.toggleLoop('warbler', true);
  jukebox.toggleLoop('kaka', true);




  $(".play").on("click", function(){
    var sound = $(this).attr("data-audio");
    jukebox.play(sound);
  });

});
