int cat_x = 900;
int cat_y = 400;
int yellowmouse_x = 160;
int yellowmouse_y = 400;
int purplemouse_x = 520;
int purplemouse_y = 360;
int greenmouse_x = 960;
int greenmouse_y = 320;
int pinkmouse_x = 360;
int pinkmouse_y = 610;
int orangemouse_x = 700;
int orangemouse_y = 580;
PImage backgroundImage;
boolean backgroundImageIsShowing = true;
String imagePath = "img/forest.jpg";
public final int F_KEY = 70;
public final int S_KEY = 83;
final int SPACING = 100;
final int BLOCK_SIZE = 100;
PImage mouse1;
PImage mouse2;
PImage mouse3;
PImage mouse4;
PImage mouse5;

void setup(){
  size (1280, 800);
  draw();
  backgroundImage = loadImage(imagePath);

  mouse1 = loadImage("img/mouse.png");
  mouse2 = loadImage("img/mouse2.png");
  mouse3 = loadImage("img/mouse3.png");
  mouse4 = loadImage("img/mouse4.png");
  mouse5 = loadImage("img/mouse5.png");
}

// draw circle background
void drawBack1(){
  background(100);

  for (int i = 0; i < width; i += SPACING) {
    for (int j = 0; j < height; j += SPACING) {
      fill(211,211,211);
      circle(i, j, BLOCK_SIZE);
    }
  }
}

void keyPressed() {
//draw second background
  if (S_KEY == keyCode) {
    drawBack1();
  }

  //draw first background
  if (F_KEY == keyCode) {
    if (backgroundImageIsShowing) {
      imagePath = "img/forest.jpg";
      backgroundImageIsShowing = false;
    }

    backgroundImage.resize(1280, 800);
    image(backgroundImage, 0, 0);
  } // end if f_key

  //move cat
  if (key == CODED) {
    if (keyCode == UP) {
      cat_y -= 3;
    } else if (keyCode == DOWN) {
      cat_y += 3;
    } else if (keyCode == LEFT) {
      cat_x -= 3;
    } else if (keyCode == RIGHT) {
      cat_x += 3;
    }
  }
}

void draw() {
  drawCat();

  if (S_KEY == keyCode) {
    mouse1.resize(200,200);
    image(mouse1, 230, 500);
    mouse2.resize(100,100);
    image(mouse2, 445, 57);
    mouse3.resize(90, 90);
    image(mouse3, 50, 355);
    mouse4.resize(130,130);
    image(mouse4, 630, 450);
    mouse5.resize(100,100);
    image(mouse5, 845, 50);
  }

  if (F_KEY == keyCode) {
    imagePath = "img/forest.jpg";

    drawYellowMouse();
    drawPurpleMouse();
    drawGreenMouse();
    drawPinkMouse();
    drawOrangeMouse();
  }
}
