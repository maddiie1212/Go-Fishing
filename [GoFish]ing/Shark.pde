class Shark{
   // variables
  int x;
  int y;

  int w = 50;
  int h = 50;

  boolean isMovingLeft;
  boolean isMovingRight;

  float speed;

  int left;
  int right;
  int top;
  int bottom;
  
  PImage sharkImage;

  color sharkColor = color(0,255,255);
  //constructor (initializes variables)
  Shark(int startingX, int startingY) {
  
    x = startingX;
    y = startingY;

    isMovingLeft = false;
    isMovingRight = true;


    speed = 3.5;

    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
    
    sharkImage = loadImage("shark.jpeg");
    imageMode(CENTER);

    float sharkScale  = .25;

    sharkImage.resize(int(sharkImage.width * sharkScale),
      int(sharkImage.height * sharkScale));
  }

  //functions

  void render() {
    //rect(x, y, w, h);
    image(sharkImage, x, y);
  }

  void move() {
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;

    if (isMovingLeft == true) {
      x -= speed; // same as x = x - speed;
      if(x == 0){
       isMovingRight = true;
      isMovingLeft = false;
    }
    }
    if (isMovingRight == true) {
      x+=speed;
      if (x == width){
        
      isMovingRight = false;
      isMovingLeft = true;
      }
    }
  }
  
  void fishermanCollision(Player aPlayer){
    // check to see if player is colliding and coming from the left
    if (aPlayer.top <= bottom &&
      aPlayer.bottom >= top &&
      aPlayer.right > left &&
      aPlayer.left <= left) {
      aPlayer.isMovingRight = false;
      state = 2;
    //    if(playerWallCollideSound.isPlaying() == false){
    //  playerWallCollideSound.play();
    //}
    }


    // check to see if player is colliding and coming from the right
    if (aPlayer.top <= bottom &&
      aPlayer.bottom >= top &&
      aPlayer.left <= right &&
      aPlayer.right >= right) {
      aPlayer.isMovingLeft = false;
      state = 2;
    //    if(playerWallCollideSound.isPlaying() == false){
    //  playerWallCollideSound.play();
    //}
    }

    // check to see if player is colliding and coming from the top
    if (aPlayer.left <= right &&
      aPlayer.right >= left &&
      aPlayer.bottom > top &&
      aPlayer.top <= top) {
      aPlayer.isMovingDown = false;
      state = 2;
    //    if(playerWallCollideSound.isPlaying() == false){
    //  playerWallCollideSound.play();
    //}
    }
    
    // check to see if player is colliding and coming from the bottom
    if(aPlayer.left <= right &&
    aPlayer.right >= left &&
    aPlayer.top < bottom &&
    aPlayer.bottom >= bottom){
      aPlayer.isMovingUp = false;
      state = 2;
    //    if(playerWallCollideSound.isPlaying() == false){
    //  playerWallCollideSound.play();
    //}
    }
    
    
  }
    
  }
 
