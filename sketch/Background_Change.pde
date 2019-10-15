//Check for if 'F' or 'S' key are previously pressed
void bgChecker() {
  if(keyPressed) {
      if(key == 'f' || key == 'F') {
        previous_key_press = 70;
      } else if(key == 's' || key == 'S') {
          previous_key_press = 83;
        }
    }
}

void bgChanger() {
  if(previous_key_press == 70) {
    background(bg_F); 
   } else if(previous_key_press == 83) {
       bgPrimitives();
     }
}
