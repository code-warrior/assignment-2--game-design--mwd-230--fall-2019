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

void drawPurpleMouse() {
  drawPurpleMouseEars();
  drawPurpleMouseBody();
  drawPurpleMouseEyes();
  drawPurpleMouseNose();
  drawPurpleMouseLegs();
}
