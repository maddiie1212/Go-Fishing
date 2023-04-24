import processing.sound.*;

// declare sound files
SoundFile playerWallCollideSound;
SoundFile backgroundMusic;


// declare and initialize state variable
int state = 0;

// declare state 0 text color
color openingText=color(220, 20, 60);

// declare my player vars
Player p1;

// declare my shark vars
Shark shark1;
Shark shark2;
Shark shark3;

// declare my obstacle vars
Obstacle o1;
Obstacle o2;
Obstacle o3;
Obstacle o4;
Obstacle o5;
Obstacle o6;
Obstacle o7;
Obstacle o8;
Obstacle o9;
Obstacle o10;
Obstacle o11;
Obstacle o12;

//declare fish vars
Fish f1;
Fish f2;
Fish f3;
Fish f4;
Fish f5;
Fish f6;
Fish f7;
Fish f8;
Fish f9;
Fish f10;
Fish f11;
Fish f12;
Fish f13;
Fish f14;
Fish f15;
Fish f16;
Fish f17;
Fish f18;
Fish f19;
Fish f20;
Fish f21;
Fish f22;
Fish f23;
Fish f24;
Fish f25;
Fish f26;
Fish f27;
Fish f28;
Fish f29;
Fish f30;
Fish f31;
Fish f32;
Fish f33;
Fish f34;
Fish f35;
Fish f36;
Fish f37;
Fish f38;
Fish f39;
Fish f40;
Fish f41;
Fish f42;
Fish f43;
Fish f44;
Fish f45;
Fish f46;
Fish f47;
Fish f48;
Fish f49;
Fish f50;
Fish f51;
Fish f52;
Fish f53;
Fish f54;
Fish f55;
Fish f56;
Fish f57;
Fish f58;
Fish f59;
Fish f60;
Fish f61;
Fish f62;
Fish f63;
Fish f64;
Fish f65;
Fish f66;
Fish f67;
Fish f68;
Fish f69;
Fish f70;
Fish f71;
Fish f72;
Fish f73;
Fish f74;
Fish f75;
Fish f76;
Fish f77;
Fish f78;
Fish f79;
Fish f80;
Fish f81;
Fish f82;
Fish f83;
Fish f84;
Fish f85;
Fish f86;
Fish f87;
Fish f88;
Fish f89;
Fish f90;
Fish f91;
Fish f92;
Fish f93;
Fish f94;
Fish f95;
Fish f96;


// creating ArrayList
ArrayList<Obstacle> obstacleList;
ArrayList<Shark> sharkList;
ArrayList<Fish> fishyList;
ArrayList<Player> playerList;

void setup() {
  size(1200, 800);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(75);

  // initialize images


  // initialize sound files
  playerWallCollideSound = new SoundFile(this, "playerwall.wav");
  backgroundMusic = new SoundFile(this, "river.wav");

  // initialize my vars

  // player vars
  p1 = new Player(width/2, height/2, 50, 50);

  // shark vars
  shark1 = new Shark(0, height/2);
  shark2 = new Shark(0, height/2 + height/3);
  shark3 = new Shark(0, height/2 - height/3);

  // obstacle vars
  o1 = new Obstacle(0, height, 300, 50);
  o2 = new Obstacle(0, 0, 300, 50);
  o3 = new Obstacle(width, 0, 300, 50);
  o4 = new Obstacle(width, height, 300, 50);
  o5 = new Obstacle(0, height/2, 300, 100);
  o6 = new Obstacle(width, height/2, 300, 100);
  o7 = new Obstacle(width/3, height/2, 100, 300);
  o8 = new Obstacle(width/2 + width/6, height/2, 100, 300);
  o9 = new Obstacle(width/3, height, 100, 225);
  o10 = new Obstacle(width/2 + width/6, height, 100, 225);
  o11 = new Obstacle(width/3, 0, 100, 225);
  o12 = new Obstacle(width/2 + width/6, 0, 100, 225);

  // fishy vars

  // first column top half
  f1 = new Fish(50, o2.y + (o2.h/2) + 25 + 10);
  f2 = new Fish(50, f1.y + f1.h + 10);
  f3 = new Fish(50, f2.y + f2.h + 10);
  f4 = new Fish(50, f3.y + f3.h + 10);
  f5 = new Fish(50, f4.y + f4.h + 10);
  f6 = new Fish(50, f5.y + f5.h + 10);
  f7 = new Fish(50, f6.y + f6.h + 10);
  f8 = new Fish(50, f7.y + f7.h + 10);

  // first column bottom half
  f9 = new Fish(50, o1.y - (o1.h/2) - f1.h - 10);
  f10 = new Fish(50, f9.y - f9.h - 10);
  f11 = new Fish(50, f10.y - f10.h - 10);
  f12 = new Fish(50, f11.y - f11.h - 10);
  f13 = new Fish(50, f12.y - f12.h - 10);
  f14 = new Fish(50, f13.y - f13.h - 10);
  f15 = new Fish(50, f14.y - f14.h - 10);
  f16 = new Fish(50, f15.y - f15.h - 10);

  // second column top half
  f17 = new Fish(f1.x + f1.h + 10, f1.y);
  f18 = new Fish(f17.x, f17.y + f17.h + 10);
  f19 = new Fish(f18.x, f18.y + f18.h + 10);
  f20 = new Fish(f19.x, f19.y + f19.h + 10);
  f21 = new Fish(f20.x, f20.y + f20.h + 10);
  f22 = new Fish(f21.x, f21.y + f21.h + 10);
  f23 = new Fish(f22.x, f22.y + f22.h + 10);
  f24 = new Fish(f23.x, f23.y + f23.h + 10);

  // second column bottom half
  f25 = new Fish(f9.x + f9.h + 10, f9.y);
  f26 = new Fish(f25.x, f25.y - f25.h - 10);
  f27 = new Fish(f26.x, f26.y - f26.h - 10);
  f28 = new Fish(f26.x, f27.y - f27.h - 10);
  f29 = new Fish(f26.x, f28.y - f28.h - 10);
  f30 = new Fish(f26.x, f29.y - f29.h - 10);
  f31 = new Fish(f26.x, f30.y - f30.h - 10);
  f32 = new Fish(f26.x, f31.y - f31.h - 10);


  // filling first row break at top part 1
  f33 = new Fish(f3.x + 330, f3.y);
  f34 = new Fish(f4.x + 330, f4.y);
  f35 = new Fish(f5.x + 330, f5.y);
  f36 = new Fish(f6.x + 330, f6.y);

  f37 = new Fish(f33.x + f33.w + 10, f33.y);
  f38 = new Fish(f34.x + f34.w + 10, f34.y);
  f39 = new Fish(f35.x + f35.w + 10, f35.y);
  f40 = new Fish(f36.x + f36.w + 10, f36.y);


  // filling second row break at bottom part 1
  f41 = new Fish(f27.x + 330, f27.y);
  f42 = new Fish(f28.x + 330, f28.y);
  f43 = new Fish(f29.x + 330, f29.y);
  f44 = new Fish(f30.x + 330, f30.y);

  f45 = new Fish(f41.x - f41.w - 10, f41.y);
  f46 = new Fish(f42.x - f42.w - 10, f42.y);
  f47 = new Fish(f43.x - f43.w - 10, f43.y);
  f48 = new Fish(f44.x - f44.w - 10, f44.y);

  // filling column 5 top half
  f49 = new Fish(width - 50, o2.y + (o2.h/2) + 25 + 10);
  f50 = new Fish(f49.x, f1.y + f1.h + 10);
  f51 = new Fish(f49.x, f2.y + f2.h + 10);
  f52 = new Fish(f49.x, f3.y + f3.h + 10);
  f53 = new Fish(f49.x, f4.y + f4.h + 10);
  f54 = new Fish(f49.x, f5.y + f5.h + 10);
  f55 = new Fish(f49.x, f6.y + f6.h + 10);
  f56 = new Fish(f49.x, f7.y + f7.h + 10);

  // first column bottom half
  f57 = new Fish(f49.x, o1.y - (o1.h/2) - f1.h - 10);
  f58 = new Fish(f49.x, f9.y - f9.h - 10);
  f59 = new Fish(f49.x, f10.y - f10.h - 10);
  f60 = new Fish(f49.x, f11.y - f11.h - 10);
  f61 = new Fish(f49.x, f12.y - f12.h - 10);
  f62 = new Fish(f49.x, f13.y - f13.h - 10);
  f63 = new Fish(f49.x, f14.y - f14.h - 10);
  f64 = new Fish(f49.x, f15.y - f15.h - 10);

  // second column top half
  f65 = new Fish(f49.x - f49.h - 10, f49.y);
  f66 = new Fish(f50.x - f50.h - 10, f50.y);
  f67 = new Fish(f51.x - f51.h - 10, f51.y);
  f68 = new Fish(f52.x - f52.h - 10, f52.y);
  f69 = new Fish(f53.x - f53.h - 10, f53.y);
  f70 = new Fish(f54.x - f54.h - 10, f54.y);
  f71 = new Fish(f55.x - f55.h - 10, f55.y);
  f72 = new Fish(f56.x - f56.h - 10, f56.y);

  // second column bottom half
  f73 = new Fish(f57.x - f57.h - 10, f57.y);
  f74 = new Fish(f58.x - f58.h - 10, f58.y);
  f75 = new Fish(f59.x - f59.h - 10, f59.y);
  f76 = new Fish(f60.x - f60.h - 10, f60.y);
  f77 = new Fish(f61.x - f61.h - 10, f61.y);
  f78 = new Fish(f62.x - f62.h - 10, f62.y);
  f79 = new Fish(f63.x - f63.h - 10, f63.y);
  f80 = new Fish(f64.x - f64.h - 10, f64.y);

  // filling first row break at top part 2
  f81 = new Fish(f67.x - 330, f67.y);
  f82 = new Fish(f68.x - 330, f68.y);
  f83 = new Fish(f69.x - 330, f69.y);
  f84 = new Fish(f70.x - 330, f70.y);

  f85 = new Fish(f81.x + f81.h + 10, f81.y);
  f86 = new Fish(f82.x + f82.h + 10, f82.y);
  f87 = new Fish(f83.x + f83.h + 10, f83.y);
  f88 = new Fish(f84.x + f84.h + 10, f84.y);

  // filling second row break at bottom part 2
  f89 = new Fish(f75.x - 330, f75.y);
  f90 = new Fish(f76.x - 330, f76.y);
  f91 = new Fish(f77.x - 330, f77.y);
  f92 = new Fish(f78.x - 330, f78.y);

  f93 = new Fish(f89.x + f41.w + 10, f89.y);
  f94 = new Fish(f90.x + f42.w + 10, f90.y);
  f95 = new Fish(f91.x + f43.w + 10, f91.y);
  f96 = new Fish(f92.x + f44.w + 10, f92.y);


  // player array list
  playerList = new ArrayList<Player>();
  playerList.add(p1);

  // obstacle array list
  obstacleList = new ArrayList<Obstacle>();

  obstacleList.add(o1);
  obstacleList.add(o2);
  obstacleList.add(o3);
  obstacleList.add(o4);
  obstacleList.add(o5);
  obstacleList.add(o6);
  obstacleList.add(o7);
  obstacleList.add(o8);
  obstacleList.add(o9);
  obstacleList.add(o10);
  obstacleList.add(o11);
  obstacleList.add(o12);

  // shark array list
  sharkList = new ArrayList<Shark>();
  sharkList.add(shark1);
  sharkList.add(shark2);
  sharkList.add(shark3);

  // fishy array list
  fishyList = new ArrayList<Fish>();
  fishyList.add(f1);
  fishyList.add(f2);
  fishyList.add(f3);
  fishyList.add(f4);
  fishyList.add(f5);
  fishyList.add(f6);
  fishyList.add(f7);
  fishyList.add(f8);
  fishyList.add(f9);
  fishyList.add(f10);
  fishyList.add(f11);
  fishyList.add(f12);
  fishyList.add(f13);
  fishyList.add(f14);
  fishyList.add(f15);
  fishyList.add(f16);
  fishyList.add(f17);
  fishyList.add(f18);
  fishyList.add(f19);
  fishyList.add(f20);
  fishyList.add(f21);
  fishyList.add(f22);
  fishyList.add(f23);
  fishyList.add(f24);
  fishyList.add(f25);
  fishyList.add(f26);
  fishyList.add(f27);
  fishyList.add(f28);
  fishyList.add(f29);
  fishyList.add(f30);
  fishyList.add(f31);
  fishyList.add(f32);
  fishyList.add(f33);
  fishyList.add(f34);
  fishyList.add(f35);
  fishyList.add(f36);
  fishyList.add(f37);
  fishyList.add(f38);
  fishyList.add(f39);
  fishyList.add(f40);
  fishyList.add(f41);
  fishyList.add(f42);
  fishyList.add(f43);
  fishyList.add(f44);
  fishyList.add(f45);
  fishyList.add(f46);
  fishyList.add(f47);
  fishyList.add(f48);
  fishyList.add(f49);
  fishyList.add(f50);
  fishyList.add(f51);
  fishyList.add(f52);
  fishyList.add(f53);
  fishyList.add(f54);
  fishyList.add(f55);
  fishyList.add(f56);
  fishyList.add(f57);
  fishyList.add(f58);
  fishyList.add(f59);
  fishyList.add(f60);
  fishyList.add(f61);
  fishyList.add(f62);
  fishyList.add(f63);
  fishyList.add(f64);
  fishyList.add(f65);
  fishyList.add(f66);
  fishyList.add(f67);
  fishyList.add(f68);
  fishyList.add(f69);
  fishyList.add(f70);
  fishyList.add(f71);
  fishyList.add(f72);
  fishyList.add(f73);
  fishyList.add(f74);
  fishyList.add(f75);
  fishyList.add(f76);
  fishyList.add(f77);
  fishyList.add(f78);
  fishyList.add(f79);
  fishyList.add(f80);
  fishyList.add(f81);
  fishyList.add(f82);
  fishyList.add(f83);
  fishyList.add(f84);
  fishyList.add(f85);
  fishyList.add(f86);
  fishyList.add(f87);
  fishyList.add(f88);
  fishyList.add(f89);
  fishyList.add(f90);
  fishyList.add(f91);
  fishyList.add(f92);
  fishyList.add(f93);
  fishyList.add(f94);
  fishyList.add(f95);
  fishyList.add(f96);
}

void draw() {
  background(42);
  switch(state) {
  case 0:
    fill(openingText);
    textSize(75);
    text("[GO FISH]ING", width/2, height/2);
    textSize(25);
    text("press space to start game", width/2, height/2 + height/3);

    break;

  case 1:
    fill(255);
    // for loop to go through everything in obstacleList
    for (Obstacle anObstacle : obstacleList) {
      anObstacle.render();
      anObstacle.playerCollide(p1);
    }

    // for loop to go through everything in sharkList
    for (Shark aShark : sharkList) {
      fill(aShark.sharkColor);
      aShark.render();
      aShark.move();
      aShark.fishermanCollision(p1);
    }

    // for loop to go through everything in fishyList
    for (Fish aFish : fishyList) {
      aFish.render();

      for (Player aPlayer : playerList) {
        aFish.fishCollision(aPlayer);
      }
    }
    for (int i = fishyList.size()-1; i >= 0; i=i-1) {
      Fish aFish = fishyList.get(i);

      if (aFish.isCaught == true) {
        fishyList.remove(aFish);
      }
    }

    fill(p1.playerColor);
    p1.render();
    p1.move();
    p1.wallDetect();

    // loop background noise
    if (backgroundMusic.isPlaying() == false) {
      backgroundMusic.play();
    }


    break;

  case 2:
    fill(color(255, 0, 0));
    textSize(75);
    text("SHARK ATTACK! GAME OVER.", width/2, height/2);
    textSize(25);
    text("press 'r' to restart game", width/2, height/2 + height/3);
    if (backgroundMusic.isPlaying() == true) {
      backgroundMusic.stop();
    }
    break;

  case 3:
  textSize(75);
    text("YOU WIN! ALL FISH CAUGHT", width/2, height/2);
    textSize(25);
    text("press 'r' to restart game", width/2, height/2 + height/3);
    if (backgroundMusic.isPlaying() == true) {
      backgroundMusic.stop();
    }
    break;
  }


  if (fishyList.size() == 0) {
    state = 3; // state 3 is the winner screen
  }
}

void keyPressed() {
  if (key == 'a') {
    p1.isMovingLeft = true;
  }

  if (key  == 'd') {
    p1.isMovingRight = true;
  }
  if (key == 'w') {
    p1.isMovingUp = true;
  }
  if (key == 's') {
    p1.isMovingDown = true;
  }
  if (key == 'r' && state == 2) {
    state = 1;
    reset();
  }
  if (key == 'r' && state == 3) {
    state = 1;
    reset();
  }
  if (key == 'r' && state == 0) {
    state = 1;
    reset();
  }
}

void keyReleased() {
  if (key == 'a') {
    p1.isMovingLeft = false;
  }

  if (key == 'd') {
    p1.isMovingRight = false;
  }
  if (key == 'w') {
    p1.isMovingUp = false;
  }
  if (key == 's') {
    p1.isMovingDown = false;
  }
  if (key == ' ') {
    state = 1;
  }
  if (key == 'C') {
    state = 3;
  }
}


// reset func to set up restart game (when 'r' is pressed)
void reset() {
  size(1200, 800);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(75);

  // initialize images


  // initialize sound files
  playerWallCollideSound = new SoundFile(this, "playerwall.wav");
  backgroundMusic = new SoundFile(this, "river.wav");

  // initialize my vars

  // player vars
  p1 = new Player(width/2, height/2, 50, 50);

  // shark vars
  shark1 = new Shark(0, height/2);
  shark2 = new Shark(0, height/2 + height/3);
  shark3 = new Shark(0, height/2 - height/3);

  // obstacle vars
  o1 = new Obstacle(0, height, 300, 50);
  o2 = new Obstacle(0, 0, 300, 50);
  o3 = new Obstacle(width, 0, 300, 50);
  o4 = new Obstacle(width, height, 300, 50);
  o5 = new Obstacle(0, height/2, 300, 100);
  o6 = new Obstacle(width, height/2, 300, 100);
  o7 = new Obstacle(width/3, height/2, 100, 300);
  o8 = new Obstacle(width/2 + width/6, height/2, 100, 300);
  o9 = new Obstacle(width/3, height, 100, 225);
  o10 = new Obstacle(width/2 + width/6, height, 100, 225);
  o11 = new Obstacle(width/3, 0, 100, 225);
  o12 = new Obstacle(width/2 + width/6, 0, 100, 225);

  // fishy vars

  // first column top half
  f1 = new Fish(50, o2.y + (o2.h/2) + 25 + 10);
  f2 = new Fish(50, f1.y + f1.h + 10);
  f3 = new Fish(50, f2.y + f2.h + 10);
  f4 = new Fish(50, f3.y + f3.h + 10);
  f5 = new Fish(50, f4.y + f4.h + 10);
  f6 = new Fish(50, f5.y + f5.h + 10);
  f7 = new Fish(50, f6.y + f6.h + 10);
  f8 = new Fish(50, f7.y + f7.h + 10);

  // first column bottom half
  f9 = new Fish(50, o1.y - (o1.h/2) - f1.h - 10);
  f10 = new Fish(50, f9.y - f9.h - 10);
  f11 = new Fish(50, f10.y - f10.h - 10);
  f12 = new Fish(50, f11.y - f11.h - 10);
  f13 = new Fish(50, f12.y - f12.h - 10);
  f14 = new Fish(50, f13.y - f13.h - 10);
  f15 = new Fish(50, f14.y - f14.h - 10);
  f16 = new Fish(50, f15.y - f15.h - 10);

  // second column top half
  f17 = new Fish(f1.x + f1.h + 10, f1.y);
  f18 = new Fish(f17.x, f17.y + f17.h + 10);
  f19 = new Fish(f18.x, f18.y + f18.h + 10);
  f20 = new Fish(f19.x, f19.y + f19.h + 10);
  f21 = new Fish(f20.x, f20.y + f20.h + 10);
  f22 = new Fish(f21.x, f21.y + f21.h + 10);
  f23 = new Fish(f22.x, f22.y + f22.h + 10);
  f24 = new Fish(f23.x, f23.y + f23.h + 10);

  // second column bottom half
  f25 = new Fish(f9.x + f9.h + 10, f9.y);
  f26 = new Fish(f25.x, f25.y - f25.h - 10);
  f27 = new Fish(f26.x, f26.y - f26.h - 10);
  f28 = new Fish(f26.x, f27.y - f27.h - 10);
  f29 = new Fish(f26.x, f28.y - f28.h - 10);
  f30 = new Fish(f26.x, f29.y - f29.h - 10);
  f31 = new Fish(f26.x, f30.y - f30.h - 10);
  f32 = new Fish(f26.x, f31.y - f31.h - 10);


  // filling first row break at top part 1
  f33 = new Fish(f3.x + 330, f3.y);
  f34 = new Fish(f4.x + 330, f4.y);
  f35 = new Fish(f5.x + 330, f5.y);
  f36 = new Fish(f6.x + 330, f6.y);

  f37 = new Fish(f33.x + f33.w + 10, f33.y);
  f38 = new Fish(f34.x + f34.w + 10, f34.y);
  f39 = new Fish(f35.x + f35.w + 10, f35.y);
  f40 = new Fish(f36.x + f36.w + 10, f36.y);


  // filling second row break at bottom part 1
  f41 = new Fish(f27.x + 330, f27.y);
  f42 = new Fish(f28.x + 330, f28.y);
  f43 = new Fish(f29.x + 330, f29.y);
  f44 = new Fish(f30.x + 330, f30.y);

  f45 = new Fish(f41.x - f41.w - 10, f41.y);
  f46 = new Fish(f42.x - f42.w - 10, f42.y);
  f47 = new Fish(f43.x - f43.w - 10, f43.y);
  f48 = new Fish(f44.x - f44.w - 10, f44.y);

  // filling column 5 top half
  f49 = new Fish(width - 50, o2.y + (o2.h/2) + 25 + 10);
  f50 = new Fish(f49.x, f1.y + f1.h + 10);
  f51 = new Fish(f49.x, f2.y + f2.h + 10);
  f52 = new Fish(f49.x, f3.y + f3.h + 10);
  f53 = new Fish(f49.x, f4.y + f4.h + 10);
  f54 = new Fish(f49.x, f5.y + f5.h + 10);
  f55 = new Fish(f49.x, f6.y + f6.h + 10);
  f56 = new Fish(f49.x, f7.y + f7.h + 10);

  // first column bottom half
  f57 = new Fish(f49.x, o1.y - (o1.h/2) - f1.h - 10);
  f58 = new Fish(f49.x, f9.y - f9.h - 10);
  f59 = new Fish(f49.x, f10.y - f10.h - 10);
  f60 = new Fish(f49.x, f11.y - f11.h - 10);
  f61 = new Fish(f49.x, f12.y - f12.h - 10);
  f62 = new Fish(f49.x, f13.y - f13.h - 10);
  f63 = new Fish(f49.x, f14.y - f14.h - 10);
  f64 = new Fish(f49.x, f15.y - f15.h - 10);

  // second column top half
  f65 = new Fish(f49.x - f49.h - 10, f49.y);
  f66 = new Fish(f50.x - f50.h - 10, f50.y);
  f67 = new Fish(f51.x - f51.h - 10, f51.y);
  f68 = new Fish(f52.x - f52.h - 10, f52.y);
  f69 = new Fish(f53.x - f53.h - 10, f53.y);
  f70 = new Fish(f54.x - f54.h - 10, f54.y);
  f71 = new Fish(f55.x - f55.h - 10, f55.y);
  f72 = new Fish(f56.x - f56.h - 10, f56.y);

  // second column bottom half
  f73 = new Fish(f57.x - f57.h - 10, f57.y);
  f74 = new Fish(f58.x - f58.h - 10, f58.y);
  f75 = new Fish(f59.x - f59.h - 10, f59.y);
  f76 = new Fish(f60.x - f60.h - 10, f60.y);
  f77 = new Fish(f61.x - f61.h - 10, f61.y);
  f78 = new Fish(f62.x - f62.h - 10, f62.y);
  f79 = new Fish(f63.x - f63.h - 10, f63.y);
  f80 = new Fish(f64.x - f64.h - 10, f64.y);

  // filling first row break at top part 2
  f81 = new Fish(f67.x - 330, f67.y);
  f82 = new Fish(f68.x - 330, f68.y);
  f83 = new Fish(f69.x - 330, f69.y);
  f84 = new Fish(f70.x - 330, f70.y);

  f85 = new Fish(f81.x + f81.h + 10, f81.y);
  f86 = new Fish(f82.x + f82.h + 10, f82.y);
  f87 = new Fish(f83.x + f83.h + 10, f83.y);
  f88 = new Fish(f84.x + f84.h + 10, f84.y);

  // filling second row break at bottom part 2
  f89 = new Fish(f75.x - 330, f75.y);
  f90 = new Fish(f76.x - 330, f76.y);
  f91 = new Fish(f77.x - 330, f77.y);
  f92 = new Fish(f78.x - 330, f78.y);

  f93 = new Fish(f89.x + f41.w + 10, f89.y);
  f94 = new Fish(f90.x + f42.w + 10, f90.y);
  f95 = new Fish(f91.x + f43.w + 10, f91.y);
  f96 = new Fish(f92.x + f44.w + 10, f92.y);


  //// filling column 1 break
  //while (y < height) {
  //  Fish.add(new Fish(width/2 + width/2, y));
  //  y = 0 + Fish.h + 10;
  //}

  // player array list
  playerList = new ArrayList<Player>();
  playerList.add(p1);

  // obstacle array list
  obstacleList = new ArrayList<Obstacle>();

  obstacleList.add(o1);
  obstacleList.add(o2);
  obstacleList.add(o3);
  obstacleList.add(o4);
  obstacleList.add(o5);
  obstacleList.add(o6);
  obstacleList.add(o7);
  obstacleList.add(o8);
  obstacleList.add(o9);
  obstacleList.add(o10);
  obstacleList.add(o11);
  obstacleList.add(o12);

  // shark array list
  sharkList = new ArrayList<Shark>();
  sharkList.add(shark1);
  sharkList.add(shark2);
  sharkList.add(shark3);

  // fishy array list
  fishyList = new ArrayList<Fish>();
  fishyList.add(f1);
  fishyList.add(f2);
  fishyList.add(f3);
  fishyList.add(f4);
  fishyList.add(f5);
  fishyList.add(f6);
  fishyList.add(f7);
  fishyList.add(f8);
  fishyList.add(f9);
  fishyList.add(f10);
  fishyList.add(f11);
  fishyList.add(f12);
  fishyList.add(f13);
  fishyList.add(f14);
  fishyList.add(f15);
  fishyList.add(f16);
  fishyList.add(f17);
  fishyList.add(f18);
  fishyList.add(f19);
  fishyList.add(f20);
  fishyList.add(f21);
  fishyList.add(f22);
  fishyList.add(f23);
  fishyList.add(f24);
  fishyList.add(f25);
  fishyList.add(f26);
  fishyList.add(f27);
  fishyList.add(f28);
  fishyList.add(f29);
  fishyList.add(f30);
  fishyList.add(f31);
  fishyList.add(f32);
  fishyList.add(f33);
  fishyList.add(f34);
  fishyList.add(f35);
  fishyList.add(f36);
  fishyList.add(f37);
  fishyList.add(f38);
  fishyList.add(f39);
  fishyList.add(f40);
  fishyList.add(f41);
  fishyList.add(f42);
  fishyList.add(f43);
  fishyList.add(f44);
  fishyList.add(f45);
  fishyList.add(f46);
  fishyList.add(f47);
  fishyList.add(f48);
  fishyList.add(f49);
  fishyList.add(f50);
  fishyList.add(f51);
  fishyList.add(f52);
  fishyList.add(f53);
  fishyList.add(f54);
  fishyList.add(f55);
  fishyList.add(f56);
  fishyList.add(f57);
  fishyList.add(f58);
  fishyList.add(f59);
  fishyList.add(f60);
  fishyList.add(f61);
  fishyList.add(f62);
  fishyList.add(f63);
  fishyList.add(f64);
  fishyList.add(f65);
  fishyList.add(f66);
  fishyList.add(f67);
  fishyList.add(f68);
  fishyList.add(f69);
  fishyList.add(f70);
  fishyList.add(f71);
  fishyList.add(f72);
  fishyList.add(f73);
  fishyList.add(f74);
  fishyList.add(f75);
  fishyList.add(f76);
  fishyList.add(f77);
  fishyList.add(f78);
  fishyList.add(f79);
  fishyList.add(f80);
  fishyList.add(f81);
  fishyList.add(f82);
  fishyList.add(f83);
  fishyList.add(f84);
  fishyList.add(f85);
  fishyList.add(f86);
  fishyList.add(f87);
  fishyList.add(f88);
  fishyList.add(f89);
  fishyList.add(f90);
  fishyList.add(f91);
  fishyList.add(f92);
  fishyList.add(f93);
  fishyList.add(f94);
  fishyList.add(f95);
  fishyList.add(f96);
}
