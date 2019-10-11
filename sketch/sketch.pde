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
String imagePath = "img/forest.jpg";
public final int F_KEY = 70;
public final int S_KEY = 83;
int previousState = F_KEY;
String currentState = "F State";
final int SPACING = 100;
final int BLOCK_SIZE = 100;
PImage mouse1;
PImage mouse2;
PImage mouse3;
PImage mouse4;
PImage mouse5;

void setup(){
  size (1280, 800);
  backgroundImage = loadImage(imagePath);
  backgroundImage.resize(1280, 800);

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
  switch(keyCode) {
    case F_KEY: {
      if (S_KEY == previousState) {
        currentState = "F State";
        previousState = F_KEY;
      }

        background(backgroundImage);
        drawYellowMouse();
        drawPurpleMouse();
        drawGreenMouse();
        drawPinkMouse();
        drawOrangeMouse();

      break;
    }

    case S_KEY: {
      if (F_KEY == previousState) {
        currentState = "S State";
        previousState = S_KEY;
      }

       drawBack1();
      image(mouse1, 240, 550);
      image(mouse2, 445, 30);
      image(mouse3, 50, 360);
      image(mouse4, 630, 450);
      image(mouse5, 845, 37);

      break;
    }
  }
  

// start if move cat
if (key == CODED) {
    if (keyCode == UP) {
      cat_y -= 1;
    } else if (keyCode == DOWN) {
      cat_y += 1;
    } else if (keyCode == LEFT) {
      cat_x -= 1;
    } else if (keyCode == RIGHT) {
      cat_x += 1;
    }
  }//end if move cat
  
}


void draw() {
  drawCat();
  
}
