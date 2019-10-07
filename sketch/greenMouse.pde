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

void drawGreenMouse() {
  drawGreenMouseEars();
  drawGreenMouseBody();
  drawGreenMouseEyes();
  drawGreenMouseNose();
  drawGreenMouseLegs();
}
