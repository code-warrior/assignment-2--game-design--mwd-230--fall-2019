import java.util.Arrays;
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
PImage obs;
public final static int HEAD_WIDTH_HEIGHT = 75;
public final static int BODY_WIDTH = 250;
public final static int BODY_HEIGHT = 150;
public final static int MOVEMENT_SPEED = 10;
public final static int TRUE_GRAY = (255/2);
public final static int WHITE = 255;
public int[][] obsPoints = new int[2][5];

void setup() {
  size(1280, 800);
  setBackground();
  bg = loadImage("img/Background--1.jpg");
  obs = loadImage("img/Obstacle--1.png");
  //for loop with 5 random obstacles
  //Generate random numbers for x/y
  //max x is width
  //max y is height
  for(int i = 0; i < 5; i++) {
    int x = floor(random(128))*10;
    int y = floor(random(80))*10;
    obsPoints[0][i] = x;
    obsPoints[1][i] = y;
    System.out.println(x + "   " + y);
  }
    
}

void drawObstacles(int point_x, int point_y) {
  if(firstBackground) {
    image(obs, point_x, point_y);
  }
  else {
    stroke(0);
    ellipse(point_x, point_y, 50, 50);
    ellipse(point_x+5, point_y+5, 50, 50);
    ellipse(point_x-5, point_y+5, 50, 50);
    ellipse(point_x+5, point_y-5, 50, 50);
    ellipse(point_x-5, point_y-5, 50, 50);
  }
}

void setBackground() {
  if(firstBackground) {
    background(255);
  }
  else {
    background(bg); 
  }
}

void drawCreature(int point_x, int point_y) {
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
  for(int i = 0; i < 5; i++) {
    drawObstacles(obsPoints[0][i],obsPoints[1][i]);
  }
  drawCreature(starting_x, starting_y);

}

//Check against the bounds of our canvas
void keyPressed() {
  final int TOTAL_WIDTH = (50 + BODY_WIDTH + HEAD_WIDTH_HEIGHT);
  final int TOTAL_HEIGHT = (50 + BODY_HEIGHT);
  int[] currentPoints = {starting_x, starting_y};
  if(keyCode == 38 && starting_y > 0 && !(hasCollided(currentPoints, TOTAL_WIDTH, TOTAL_HEIGHT))) {
    starting_y -= MOVEMENT_SPEED;
  }
  else if(keyCode == 40 && starting_y < height - TOTAL_HEIGHT && !(hasCollided(currentPoints, TOTAL_WIDTH, TOTAL_HEIGHT))) {
    starting_y += MOVEMENT_SPEED;
  }
  else if(keyCode == 37 && starting_x > 0 && !(hasCollided(currentPoints, TOTAL_WIDTH, TOTAL_HEIGHT))) {
    starting_x -= MOVEMENT_SPEED;
  }
  else if(keyCode == 39 && starting_x < width - TOTAL_WIDTH && !(hasCollided(currentPoints, TOTAL_WIDTH, TOTAL_HEIGHT))) {
    starting_x += MOVEMENT_SPEED;
  }
  else if((keyCode == 70 && !firstBackground) || (keyCode == 83 && firstBackground)){
    firstBackground = !firstBackground;
  }
  //Debugging
  else {
    
    //left up right down
    // 37  38 39    40
  }
  //System.out.println("No way jose " + key + " " + keyCode + " " + starting_x + " " + starting_y + " Has collided: " + hasCollided(currentPoints, TOTAL_WIDTH, TOTAL_HEIGHT));
}

boolean hasCollided(int[] creaturePos, int creatureWidth, int creatureHeight) {
  int low_x = creaturePos[0];
  int high_x = low_x + creatureWidth;
  int low_y = creaturePos[1];
  int high_y = low_y + creatureHeight;
  //System.out.println(low_x + "  " + high_x);
  //System.out.println(low_y + "  " + high_y);
  if(obsPoints[0][0] < high_x &&
     obsPoints[0][0] + 100 > low_x &&
     obsPoints[1][0] < high_y &&
     obsPoints[1][0] + 100 > low_y)
  {
    starting_x = 50;
    starting_y = 50;
    return true;
  }
  else if(obsPoints[0][1] < high_x &&
     obsPoints[0][1] + 100 > low_x &&
     obsPoints[1][1] < high_y &&
     obsPoints[1][1] + 100 > low_y)
  {
    starting_x = 50;
    starting_y = 50;
    return true;
  }
  else if(obsPoints[0][2] < high_x &&
     obsPoints[0][2] + 100 > low_x &&
     obsPoints[1][2] < high_y &&
     obsPoints[1][2] + 100 > low_y)
  {
    starting_x = 50;
    starting_y = 50;
    return true;
  }
  else if(obsPoints[0][3] < high_x &&
     obsPoints[0][3] + 100 > low_x &&
     obsPoints[1][3] < high_y &&
     obsPoints[1][3] + 100 > low_y)
  {
    starting_x = 50;
    starting_y = 50;
    return true;
  }
  else if(obsPoints[0][4] < high_x &&
     obsPoints[0][4] + 100 > low_x &&
     obsPoints[1][4] < high_y &&
     obsPoints[1][4] + 100 > low_y)
  {
    starting_x = 50;
    starting_y = 50;
    return true;
  }
  else {
    return false;
  }
}