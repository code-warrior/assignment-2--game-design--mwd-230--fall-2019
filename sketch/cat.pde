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

void drawCat() {
  drawCatEars();
  drawCatBody();
  drawCatEyes();
  drawCatNose();
  drawCatLegs();
}
