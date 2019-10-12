PImage backgroundImage;
String imagePath = "img/forest.jpg";
public boolean drawnBackgroundIsShowing = true;
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

 void backgroundSwitch() {
   if(drawnBackgroundIsShowing) {
     drawBack1();
     image(mouse1, 240, 550);
      image(mouse2, 445, 30);
      image(mouse3, 50, 360);
      image(mouse4, 630, 450);
      image(mouse5, 845, 37);
   }
   else {
     backgroundImage.resize(1280, 800);
     background(backgroundImage);
        drawYellowMouse();
        drawPurpleMouse();
        drawGreenMouse();
        drawPinkMouse();
        drawOrangeMouse();
     
     
   }
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
    //draw first background
    case F_KEY: {
      if (S_KEY == previousState) {
        currentState = "F State";
        previousState = F_KEY;
      }

      break;
    } // end first background

    //draw second background
    case S_KEY: {
      if (F_KEY == previousState) {
        currentState = "S State";
        previousState = S_KEY;
      }
      break;
    } // end second background
    
  }
  //cat movement 
  if(keyCode == UP) {
     cat_y -= 15;
   }
   else if(keyCode == DOWN) {
     cat_y += 15;
   }
   else if(keyCode == LEFT) {
     cat_x -= 15;
   }
   else if(keyCode == RIGHT) {
     cat_x += 15;
   }
  
}


void draw() {
  drawCat();
}
