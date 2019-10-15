//KeyPress... Allows users to use their arrow keys to move creature
void keyPressed() {
  if(key == CODED) {
      if(keyCode == 37 && start_x > 5) { //Left Arrow
        start_x -= SPEED;
        if(X_POSITION > 0 || X_POSITION <= 1280) {
          X_POSITION = X_POSITION - SPEED;
          println(" X Position Now: " + X_POSITION);
          println(" Y Position Now: " + Y_POSITION);
        }
      }
      else if(keyCode == 38 && start_y >= 77) { //Up Arrow
        start_y -= SPEED;
        if(Y_POSITION >= 0) {
          Y_POSITION = Y_POSITION - SPEED;
          println(" X Position Now: " + X_POSITION);
          println(" Y Position Now: " + Y_POSITION);
        }
      }
      else if(keyCode == 39 && start_x < width - 375) { //Right Arrow
        start_x += SPEED;
        if(X_POSITION >= 0 || X_POSITION < 1280) {
          X_POSITION = X_POSITION + SPEED;
          println(" X Position Now: " + X_POSITION);
          println(" Y Position Now: " + Y_POSITION);
        }
      }
      else if(keyCode == 40 && start_y < height - (BODY_WIDTH - 41)) { //Down Arrow
        start_y += SPEED;
        if(Y_POSITION >= 0) {
          Y_POSITION = Y_POSITION + SPEED;
          println(" X Position Now: " + X_POSITION);
          println(" Y Position Now: " + Y_POSITION);
        }
      }
      
      //KeyPress for background change 'F' and 'S'
      if(keyCode == 70) {
        previous_key_press = 70;
      }
      else if(keyCode == 83) {
        previous_key_press = 83;
      }
  }    
}
