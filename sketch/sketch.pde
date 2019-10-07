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
  void drawCatEars() {
  fill(50);
  triangle(cat_x-20, cat_y+10, cat_x-10, cat_y-80, cat_x+10, cat_y-25); //left ear
  triangle(cat_x+30, cat_y-25, cat_x+50, cat_y-80, cat_x+60, cat_y+10); //right ear
}

void drawCatBody() {
  fill(173, 216, 230);
  ellipse(cat_x+100, cat_y+60, 180, 80); //body
  circle(cat_x+20, cat_y+10, 80); //head
}

void drawCatEyes() {
  fill(50);
  circle(cat_x+35, cat_y, 15); // right eye
  circle(cat_x+5, cat_y, 15); // left eye
}

void drawCatNose() {
  fill(225);
  circle(cat_x+20, cat_y+15, 10); // nose
  line(cat_x+20, cat_y+20, cat_x+20, cat_y+30); // nose line
  line(cat_x+20, cat_y+30, cat_x+35, cat_y+20); // nose line right side
  line(cat_x+10, cat_y+35, cat_x+20, cat_y+30); // nose line left side
}

void drawCatLegs() {
  line(cat_x+50, cat_y+95, cat_x+50, cat_y+130); // leg 1
  line(cat_x+80, cat_y+100, cat_x+80, cat_y+130); // leg 2
  line(cat_x+120, cat_y+100, cat_x+120, cat_y+130); // leg 3
  line(cat_x+150, cat_y+95, cat_x+150, cat_y+130); // leg 4
  line(cat_x+190, cat_y+50, cat_x+210, cat_y+10); // tail
}
void drawYellowMouseBody() {
  fill(255, 255, 186);
  circle(yellowmouse_x+65, yellowmouse_y+40, 70); //body
  circle(yellowmouse_x+20, yellowmouse_y+10, 50); //head
}
void drawYellowMouseEars() {
  fill(255, 255, 186);
  circle(yellowmouse_x+45, yellowmouse_y-20, 45); //right ear
  circle(yellowmouse_x-5, yellowmouse_y-20, 45); //left ear
}

void drawYellowMouseEyes() {
  fill(255);
  circle(yellowmouse_x+30, yellowmouse_y, 9); // right eye
  circle(yellowmouse_x+10, yellowmouse_y, 9); // left eye

  fill(0);
  circle(yellowmouse_x+28, yellowmouse_y, 2); // right eye
  circle(yellowmouse_x+11, yellowmouse_y, 2); // left eye
}

void drawYellowMouseNose() {
  fill(225);
  circle(yellowmouse_x+20, yellowmouse_y+11, 8); // nose
  line(yellowmouse_x+20, yellowmouse_y+15, yellowmouse_x+20, yellowmouse_y+25); // nose line
  line(yellowmouse_x+10, yellowmouse_y+25, yellowmouse_x+30, yellowmouse_y+25); // nose line right side
}

void drawYellowMouseLegs() {
  line(yellowmouse_x+40, yellowmouse_y+65, yellowmouse_x+40, yellowmouse_y+90); // leg 1
  line(yellowmouse_x+55, yellowmouse_y+75, yellowmouse_x+55, yellowmouse_y+90); // leg 2
  line(yellowmouse_x+70, yellowmouse_y+75, yellowmouse_x+70, yellowmouse_y+90); // leg 3
  line(yellowmouse_x+85, yellowmouse_y+70, yellowmouse_x+85, yellowmouse_y+90); // leg 4
  line(yellowmouse_x+98, yellowmouse_y+30, yellowmouse_x+150, yellowmouse_y-10); // tail
}
//draw purple mouse
void drawPurpleMouseBody() {
  fill(177, 156, 217);
  circle(purplemouse_x+65, purplemouse_y+40, 70); //body
  circle(purplemouse_x+20, purplemouse_y+10, 50); //head
}
void drawPurpleMouseEars() {
  fill(177, 156, 217);
  circle(purplemouse_x+45, purplemouse_y-20, 45); //right ear
  circle(purplemouse_x-5, purplemouse_y-20, 45); //left ear
}

void drawPurpleMouseEyes() {
  fill(255);
  circle(purplemouse_x+30, purplemouse_y, 9); // right eye
  circle(purplemouse_x+10, purplemouse_y, 9); // left eye

  fill(0);
  circle(purplemouse_x+28, purplemouse_y, 2); // right eye
  circle(purplemouse_x+11, purplemouse_y, 2); // left eye
}

void drawPurpleMouseNose() {
  fill(225);
  circle(purplemouse_x+20, purplemouse_y+11, 8); // nose
  line(purplemouse_x+20, purplemouse_y+15, purplemouse_x+20, purplemouse_y+25); // nose line
  line(purplemouse_x+10, purplemouse_y+25, purplemouse_x+30, purplemouse_y+25); // nose line right side
}

void drawPurpleMouseLegs() {
  line(purplemouse_x+40, purplemouse_y+65, purplemouse_x+40, purplemouse_y+90); // leg 1
  line(purplemouse_x+55, purplemouse_y+75, purplemouse_x+55, purplemouse_y+90); // leg 2
  line(purplemouse_x+70, purplemouse_y+75, purplemouse_x+70, purplemouse_y+90); // leg 3
  line(purplemouse_x+85, purplemouse_y+70, purplemouse_x+85, purplemouse_y+90); // leg 4
  line(purplemouse_x+98, purplemouse_y+30, purplemouse_x+150, purplemouse_y-10); // tail
}

//draw green mouse
void drawGreenMouseBody() {
  fill(144, 238, 144);
  circle(greenmouse_x+65, greenmouse_y+40, 70); //body
  circle(greenmouse_x+20, greenmouse_y+10, 50); //head
}
void drawGreenMouseEars() {
  fill(144, 238, 144);
  circle(greenmouse_x+45, greenmouse_y-20, 45); //right ear
  circle(greenmouse_x-5, greenmouse_y-20, 45); //left ear
}

void drawGreenMouseEyes() {
  fill(255);
  circle(greenmouse_x+30, greenmouse_y, 9); // right eye
  circle(greenmouse_x+10, greenmouse_y, 9); // left eye

  fill(0);
  circle(greenmouse_x+28, greenmouse_y, 2); // right eye
  circle(greenmouse_x+11, greenmouse_y, 2); // left eye
}

void drawGreenMouseNose() {
  fill(225);
  circle(greenmouse_x+20, greenmouse_y+11, 8); // nose
  line(greenmouse_x+20, greenmouse_y+15, greenmouse_x+20, greenmouse_y+25); // nose line
  line(greenmouse_x+10, greenmouse_y+25, greenmouse_x+30, greenmouse_y+25); // nose line right side
}

void drawGreenMouseLegs() {
  line(greenmouse_x+40, greenmouse_y+65, greenmouse_x+40, greenmouse_y+90); // leg 1
  line(greenmouse_x+55, greenmouse_y+75, greenmouse_x+55, greenmouse_y+90); // leg 2
  line(greenmouse_x+70, greenmouse_y+75, greenmouse_x+70, greenmouse_y+90); // leg 3
  line(greenmouse_x+85, greenmouse_y+70, greenmouse_x+85, greenmouse_y+90); // leg 4
  line(greenmouse_x+98, greenmouse_y+30, greenmouse_x+150, greenmouse_y-10); // tail
}

//draw pink mouse
void drawPinkMouseBody() {
  fill(255, 182, 193);
  circle(pinkmouse_x+65, pinkmouse_y+40, 70); //body
  circle(pinkmouse_x+20, pinkmouse_y+10, 50); //head
}
void drawPinkMouseEars() {
  fill(255, 182, 193);
  circle(pinkmouse_x+45, pinkmouse_y-20, 45); //right ear
  circle(pinkmouse_x-5, pinkmouse_y-20, 45); //left ear
}

void drawPinkMouseEyes() {
  fill(255);
  circle(pinkmouse_x+30, pinkmouse_y, 9); // right eye
  circle(pinkmouse_x+10, pinkmouse_y, 9); // left eye

  fill(0);
  circle(pinkmouse_x+28, pinkmouse_y, 2); // right eye
  circle(pinkmouse_x+11, pinkmouse_y, 2); // left eye
}

void drawPinkMouseNose() {
  fill(225);
  circle(pinkmouse_x+20, pinkmouse_y+11, 8); // nose
  line(pinkmouse_x+20, pinkmouse_y+15, pinkmouse_x+20, pinkmouse_y+25); // nose line
  line(pinkmouse_x+10, pinkmouse_y+25, pinkmouse_x+30, pinkmouse_y+25); // nose line right side
}

void drawPinkMouseLegs() {
  line(pinkmouse_x+40, pinkmouse_y+65, pinkmouse_x+40, pinkmouse_y+90); // leg 1
  line(pinkmouse_x+55, pinkmouse_y+75, pinkmouse_x+55, pinkmouse_y+90); // leg 2
  line(pinkmouse_x+70, pinkmouse_y+75, pinkmouse_x+70, pinkmouse_y+90); // leg 3
  line(pinkmouse_x+85, pinkmouse_y+70, pinkmouse_x+85, pinkmouse_y+90); // leg 4
  line(pinkmouse_x+98, pinkmouse_y+30, pinkmouse_x+150, pinkmouse_y-10); // tail
}

//draw orange mouse
void drawOrangeMouseBody() {
  fill(255, 160, 122);
  circle(orangemouse_x+65, orangemouse_y+40, 70); //body
  circle(orangemouse_x+20, orangemouse_y+10, 50); //head
}
void drawOrangeMouseEars() {
  fill(255, 160, 122);
  circle(orangemouse_x+45, orangemouse_y-20, 45); //right ear
  circle(orangemouse_x-5, orangemouse_y-20, 45); //left ear
}

void drawOrangeMouseEyes() {
  fill(255);
  circle(orangemouse_x+30, orangemouse_y, 9); // right eye
  circle(orangemouse_x+10, orangemouse_y, 9); // left eye

  fill(0);
  circle(orangemouse_x+28, orangemouse_y, 2); // right eye
  circle(orangemouse_x+11, orangemouse_y, 2); // left eye
}

void drawOrangeMouseNose() {
  fill(225);
  circle(orangemouse_x+20, orangemouse_y+11, 8); // nose
  line(orangemouse_x+20, orangemouse_y+15, orangemouse_x+20, orangemouse_y+25); // nose line
  line(orangemouse_x+10, orangemouse_y+25, orangemouse_x+30, orangemouse_y+25); // nose line right side
}

void drawOrangeMouseLegs() {
  line(orangemouse_x+40, orangemouse_y+65, orangemouse_x+40, orangemouse_y+90); // leg 1
  line(orangemouse_x+55, orangemouse_y+75, orangemouse_x+55, orangemouse_y+90); // leg 2
  line(orangemouse_x+70, orangemouse_y+75, orangemouse_x+70, orangemouse_y+90); // leg 3
  line(orangemouse_x+85, orangemouse_y+70, orangemouse_x+85, orangemouse_y+90); // leg 4
  line(orangemouse_x+98, orangemouse_y+30, orangemouse_x+150, orangemouse_y-10); // tail
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
  if (S_KEY == keyCode){
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
  }
  
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

  void draw(){
   
  drawCatEars();
  drawCatBody();
  drawCatEyes();
  drawCatNose();
  drawCatLegs();
  if (S_KEY == keyCode) {
  image(mouse1, 230, 500);
  mouse1.resize(200,200);
  image(mouse2, 445, 57);
  mouse2.resize(100,100);
  image(mouse3, 50, 355);
  mouse3.resize(90,90);
  image(mouse4, 630, 450);
  mouse4.resize(130,130);
  image(mouse5, 845, 50);
  mouse5.resize(100,100);
  }
  if (F_KEY == keyCode) {
    imagePath = "img/forest.jpg";
  drawYellowMouseEars();
  drawYellowMouseBody();
  drawYellowMouseEyes();
  drawYellowMouseNose();
  drawYellowMouseLegs();
  
    //draw purple mouse
  drawPurpleMouseEars();
  drawPurpleMouseBody();
  drawPurpleMouseEyes();
  drawPurpleMouseNose();
  drawPurpleMouseLegs();
  
  //draw green mouse
  drawGreenMouseEars();
  drawGreenMouseBody();
  drawGreenMouseEyes();
  drawGreenMouseNose();
  drawGreenMouseLegs();
  
  //draw pink mouse
  drawPinkMouseEars();
  drawPinkMouseBody();
  drawPinkMouseEyes();
  drawPinkMouseNose();
  drawPinkMouseLegs();
  
  //draw orange mouse
  drawOrangeMouseEars();
  drawOrangeMouseBody();
  drawOrangeMouseEyes();
  drawOrangeMouseNose();
  drawOrangeMouseLegs();
  }
 
  
}
