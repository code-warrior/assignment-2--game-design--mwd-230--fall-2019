int start_x = 5;
int start_y = 750;
int HEAD_WIDTH_HEIGHT = 120;
int BODY_HEIGHT = 100;
int BODY_WIDTH = 100;
int SPEED = 20;
int previous_key_press = 0;
int X_POSITION = 380;
int Y_POSITION = 800;
PImage bg_F;

void setup() {
    size(1280, 800);
    bg_F = loadImage("img/bg-f.jpg");
}

void drawCreature(int point_x, int point_y) {
    
    //Head
    fill(65,100,218);
    ellipse(point_x+250+HEAD_WIDTH_HEIGHT/2, point_y + BODY_HEIGHT/7 - HEAD_WIDTH_HEIGHT/5, HEAD_WIDTH_HEIGHT, HEAD_WIDTH_HEIGHT);
    
    //Eye
    fill(5);
    rect(point_x+335,point_y-50, 5, 40, 20);

    //Body
    fill(150);
    ellipse(point_x+45, point_y, BODY_WIDTH, BODY_HEIGHT);
    ellipse(point_x+110, point_y, BODY_WIDTH, BODY_HEIGHT);
    ellipse(point_x+175, point_y, BODY_WIDTH, BODY_HEIGHT);
    ellipse(point_x+240,point_y,BODY_WIDTH,BODY_HEIGHT);

}

void drawObstaclesF() {
  rect(495, 600, 120, 200);
}

void bgPrimitives() {
  background(125);
  for (int i = 0; i < width; i += 50) {
    for (int j = 0; j < height; j += 120) {
      fill( random(255), random(255), random(255), random(255)); 
      circle(i, j+35, 100);
    }
  }
}

void draw() {
    bgChecker();
    bgChanger();
    drawCreature(start_x, start_y);
    drawObstaclesF();
}
