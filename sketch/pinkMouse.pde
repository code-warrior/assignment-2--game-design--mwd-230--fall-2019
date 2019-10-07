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

void drawPinkMouse() {
  drawPinkMouseEars();
  drawPinkMouseBody();
  drawPinkMouseEyes();
  drawPinkMouseNose();
  drawPinkMouseLegs();
}
