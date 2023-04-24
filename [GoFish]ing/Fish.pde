class Fish {
  // variables
  int x;
  int y;

  int w = 25;
  int h = 25;

  int left;
  int right;
  int top;
  int bottom;

  PImage fishImage;
  
  Boolean isCaught;


  //constructor (initializes variables)
  Fish(int startingX, int startingY) {

    x = startingX;
    y = startingY;

    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
    
    isCaught = false;

    fishImage = loadImage("fish.png");
    imageMode(CENTER);

    float fishyScale  = .021;

    fishImage.resize(int(fishImage.width * fishyScale),
      int(fishImage.height * fishyScale));
  }

  //functions

  void render() {
    //rect(x, y, w, h);

    image(fishImage, x, y);
  }

  void fishCollision(Player aPlayer) {
    // check to see if player is colliding and coming from the left
    if (aPlayer.top <= bottom &&
      aPlayer.bottom >= top &&
      aPlayer.right > left &&
      aPlayer.left <= left) {
      isCaught = true;
    }


    // check to see if player is colliding and coming from the right
    if (aPlayer.top <= bottom &&
      aPlayer.bottom >= top &&
      aPlayer.left <= right &&
      aPlayer.right >= right) {
      isCaught = true;
    }

    // check to see if player is colliding and coming from the top
    if (aPlayer.left <= right &&
      aPlayer.right >= left &&
      aPlayer.bottom > top &&
      aPlayer.top <= top) {
      isCaught = true;
    }

    // check to see if player is colliding and coming from the bottom
    if (aPlayer.left <= right &&
      aPlayer.right >= left &&
      aPlayer.top < bottom &&
      aPlayer.bottom >= bottom) {
      isCaught = true;
    }
  }
 
}
