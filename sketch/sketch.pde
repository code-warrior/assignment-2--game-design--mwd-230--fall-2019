int cat_x = 900;
int cat_y = 500;
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
    image(mouse1, 240, 550);
    image(mouse2, 445, 30);
    image(mouse3, 50, 360);
    image(mouse4, 630, 450);
    image(mouse5, 845, 37);
  } // end if S_KEY

  //draw first background
  if (F_KEY == keyCode) {
    if (backgroundImageIsShowing) {
      imagePath = "img/forest.jpg";
      backgroundImageIsShowing = false;
    } 
    backgroundImage.resize(1280, 800);
    image(backgroundImage, 0, 0);
    drawYellowMouse();
    drawPurpleMouse();
    drawGreenMouse();
    drawPinkMouse();
    drawOrangeMouse();
  } // end if F_KEY

// start if move cat
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
  }//end if move cat
  
}


void draw() {
  drawCat();

}
