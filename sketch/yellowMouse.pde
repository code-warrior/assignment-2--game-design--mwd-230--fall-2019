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

void drawYellowMouse() {
  drawYellowMouseEars();
  drawYellowMouseBody();
  drawYellowMouseEyes();
  drawYellowMouseNose();
  drawYellowMouseLegs();
}
