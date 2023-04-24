class Player {

  // variables
  int x;
  int y;

  int w;
  int h;

  boolean isMovingLeft;
  boolean isMovingRight;
  boolean isMovingUp;
  boolean isMovingDown;

  int speed;

  int left;
  int right;
  int top;
  int bottom;

  PImage playerImage;

  color playerColor = color(255, 255, 0);
  //constructor (initializes variables)
  Player(int startingX, int startingY, int startingW, int startingH) {
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;

    isMovingLeft = false;
    isMovingRight = false;
    isMovingUp = false;
    isMovingDown = false;

    speed = 10;

    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
    
    playerImage = loadImage("man.PNG");
    imageMode(CENTER);

    float sunScale  = .025;

    playerImage.resize(int(playerImage.width * sunScale),
      int(playerImage.height * sunScale));
  }

  //functions

  void render() {
    //rect(x, y, w, h);
    image(playerImage, x, y);
  }

  void move() {
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;

    if (isMovingLeft == true) {
      x -= speed; // same as x = x - speed;
    }
    if (isMovingRight == true) {
      x += speed; // same as x = x + speed;
    }
    if (isMovingUp == true) {
      y -= speed;
    }
    if (isMovingDown == true) {
      y += speed;
    }
  }
  
  void wallDetect(){
    if (y < 0 + w/2){
      y = height - w/2;
    }
    if (y > height - w/2){
      y = 0 + w/2;
    }
    if (x < 0 + h/2){
      x = width - h/2;
    }
    if (x > width - h/2){
      x = 0 + h/2;
    }
    
    
  }
}
