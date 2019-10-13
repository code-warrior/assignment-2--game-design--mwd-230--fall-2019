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

void drawOrangeMouse() {
  drawOrangeMouseEars();
  drawOrangeMouseBody();
  drawOrangeMouseEyes();
  drawOrangeMouseNose();
  drawOrangeMouseLegs();
}
