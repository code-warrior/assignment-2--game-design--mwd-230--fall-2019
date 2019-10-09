/*
  Create a canvas that is 1280 × 800.

  Add your creature from assignment 1, complete with keyboard bindings.

  Render a background in the canvas using only Processing’s primitives (no images).

  Design 5 obstacles to the background discussed in the previous step using only images (no primitives). 
    You must have the right to use those images, and they must have a .png or a .jpg extension. 
    Place them in the included img folder.
  
  Render a second background in the canvas using one or more images (no primitives). 
    You must have the right to use those images, and they too must have a .png or a .jpg extension. 
    Place them in the included img folder.

  Using only Processing’s primitives (no images), design 5 obstacles to be included in the background
    from the previous step.
  
  Key Code 70
  Pressing the letter ”F” on the keyboard enables the first background and disables the second.
  
  Key Code 83
  Pressing the letter ”S” on the keyboard enables the second background and disables the first.
*/

public int starting_x = 50;
public int starting_y = 50;
public boolean firstBackground = true;
PImage bg;
public final static int HEAD_WIDTH_HEIGHT = 75;
public final static int BODY_WIDTH = 250;
public final static int BODY_HEIGHT = 150;
public final static int MOVEMENT_SPEED = 10;
public final static int TRUE_GRAY = (255/2);
public final static int WHITE = 255;

void setup() {
    size(1280, 800);
    setBackground();
    bg = loadImage("img/Background--1.jpg");
}

void drawObstacles(int point_x, int point_y) {
  if(firstBackground) {

  }
  else {
    
  }
}

void setBackground() {
  if(firstBackground) {
    background(0);
  }
  else {
    background(bg); 
  }
}

void drawCreature(int point_x, int point_y) {
    setBackground();
    point(point_x, point_y);

    //Body
    fill(TRUE_GRAY);
    rect(point_x, point_y, BODY_WIDTH, BODY_HEIGHT);
    
    //Head
    fill(TRUE_GRAY);
    rect(point_x+200+HEAD_WIDTH_HEIGHT/2, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2, HEAD_WIDTH_HEIGHT, HEAD_WIDTH_HEIGHT);
    
    //Tusks
    fill(WHITE);
    triangle(
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT-20, 
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT, 
        point_x+200+HEAD_WIDTH_HEIGHT+100, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT+20);
    triangle(
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT-20, 
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT, 
        point_x+200+HEAD_WIDTH_HEIGHT+100, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT-20);

    //Eye
    //light blue
    fill(52, 204, 255);
    ellipse(point_x+200+HEAD_WIDTH_HEIGHT/2 + (HEAD_WIDTH_HEIGHT/1.75), point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + (HEAD_WIDTH_HEIGHT/1.75), 10, 10);

    //Legs
    fill(TRUE_GRAY);
    rect(point_x + (BODY_WIDTH/4)-10, point_y + BODY_HEIGHT, 10, 50);
    rect(point_x + (BODY_WIDTH/4)*3-10, point_y + BODY_HEIGHT, 10, 50);
}

void draw() {
  setBackground();
  //for loop with 5 random obstacles
  drawCreature(starting_x, starting_y);

}

//Check against the bounds of our canvas
void keyReleased() {
  if(keyCode == 38 && starting_y > 0) {
    starting_y -= MOVEMENT_SPEED;
  }
  else if(keyCode == 40 && starting_y < height - (50 + BODY_HEIGHT)) {
    starting_y += MOVEMENT_SPEED;
  }
  else if(keyCode == 37 && starting_x > 0) {
    starting_x -= MOVEMENT_SPEED;
  }
  else if(keyCode == 39 && starting_x < width - (50 + BODY_WIDTH + HEAD_WIDTH_HEIGHT)) {
    starting_x += MOVEMENT_SPEED;
  }
  else if(keyCode == 70 || keyCode == 83){
    firstBackground = !firstBackground;
  }
  //Debugging
  else {
    //System.out.println("No way jose " + key + " " + keyCode + " " + starting_x + " " + starting_y);
    //left up right down
    // 37  38 39    40
  }
}