import javafx.geometry.BoundingBox;
//adds images 
PImage img, img2, img3, img4, img5, img6;

void setup() {
 size(1280, 800); 
 
img = loadImage("patternbackground.png");
img2 = loadImage("starplate.png");
img3 = loadImage("starshieldplate.png");
img4 = loadImage("starspikeplate.png");
img5 = loadImage("starsponge.png");
img6 = loadImage("starsteelwool.png");
}

int x = 200; //X axis movement
int y = 400; //Y axis movement
int speed = 30; //Movement speed

void draw(){
  background (123, 210, 196); //Background color
   
    fill(255, 255, 255);
   

   //makes the images of enemies and adds a collider to all of them
  image(img, 0,0 );//second background
   image(img2, 1050,350 );
   BoundingBox image1 = new BoundingBox((double)1050, (double)350, (double)50, (double)30);
    
    image(img3, 570,0 );
    BoundingBox image2 = new BoundingBox((double)570, (double)0, (double)50, (double)30);
  
     image(img4, 1050,0 );
     BoundingBox image3 = new BoundingBox((double)1050, (double)0, (double)50, (double)30);

      image(img5, 0,570 );
      BoundingBox image4 = new BoundingBox((double)0, (double)570, (double)50, (double)30);

       image(img6, 820,200 );
       BoundingBox image5 = new BoundingBox((double)820, (double)200, (double)50, (double)30);

  
  int a =0;
    int b =0;
      int c =0;   
        
  int d =0;
    int e =0;
      int f =0;
  
   int g =0;
    int h =0;
      int j =0;   
        
  int k =0;
    int l =0;
      int m =0;
  //Square background loop
  for(int i = 0; i<=1280; i++){
  square(a,b,c);
  
    square(d,e,f);
    
    fill(123, 210, 196);
  a+=10;
  b+=20;
  c+=10;
  d+=5;
  e+=5;
  f+=5;
  }
  //boundaries on the rocks
  fill(123, 72, 48);
  ellipse(500, 300, 50, 30);
  BoundingBox rock1 = new BoundingBox((double)500, (double)300, (double)50, (double)30);
    ellipse(700, 400, 50, 30);
    BoundingBox rock2 = new BoundingBox((double)700, (double)400, (double)50, (double)30);
      ellipse(600, 500, 50, 30);
      BoundingBox rock3 = new BoundingBox((double)600, (double)500, (double)50, (double)30);
        ellipse(700, 600, 50, 30);
        BoundingBox rock4 = new BoundingBox((double)700, (double)600, (double)50, (double)30);
          ellipse(600, 700, 50, 30);
          BoundingBox rock5 = new BoundingBox((double)600, (double)700, (double)50, (double)30);
  
  
  fill(191, 146, 61); //color for shoes
  ellipse(x - 50, y, 100, 50); //left shoe
  fill(191, 146, 61);
  ellipse(x + 50, y, 100, 50); //right shoe
  fill(247, 30, 30);//Body color
  triangle(x + 98, y - 170, x, y, x - 97, y - 170); //body
  BoundingBox bodybounds = new BoundingBox((double)x+98, (double)y-170, (double)x-97, (double)y-170);
  
  fill(255, 229, 179);//Head color
  ellipse(x, y- 200, 200, 200); //head
  
  
  fill(0,0,0);//Eye color
  ellipse(x - 40, y-200, 50, 50); //left eye
  fill(0,0,0);
  ellipse(x + 40, y-200, 50, 50); //right eye
  //boundaries actions upon interaction
   if (bodybounds.intersects(rock1) == true){
      x-=30;
      y-=30;
    }
    else if (bodybounds.intersects(rock2) == true){
    x-=30;
    y-=30;
    }
    else if (bodybounds.intersects(rock3) == true){
    x-=30;
      y-=30;
    }
    
    else if (bodybounds.intersects(rock4) == true){
    x-=30;
      y-=30;
    
   }
  else if (bodybounds.intersects(rock5) == true){
    x-=30;
      y-=30;
  }
      else if (bodybounds.intersects(image1) == true){
    x-=30;
    y-=30;
    }
     else if (bodybounds.intersects(image2) == true){
    x-=30;
    y-=30;
    }
     else if (bodybounds.intersects(image3) == true){
    x-=30;
    y-=30;
    }
     else if (bodybounds.intersects(image4) == true){
    x-=30;
    y-=30;
    }
     else if (bodybounds.intersects(image5) == true){
    x-=30;
    y-=30;
    }
  
  
  if (keyPressed) {
    if (key == 's'|| key == 'S') {
      
          //activates patterned background
        image(img, 0,0 );
   image(img2, 1050,350 );
    image(img3, 570,0 );
     image(img4, 1050,0 );
      image(img5, 0,570 );
       image(img6, 820,200 );
      //need to disable squared background
      fill(123, 72, 48);
  ellipse(500, 300, 50, 30);
    ellipse(700, 400, 50, 30);
      ellipse(600, 500, 50, 30);
        ellipse(700, 600, 50, 30);
          ellipse(600, 700, 50, 30);
  
  
  fill(191, 146, 61); //color for shoes
  ellipse(x - 50, y, 100, 50); //left shoe
  fill(191, 146, 61);
  ellipse(x + 50, y, 100, 50); //right shoe
  fill(247, 30, 30);//Body color
  triangle(x + 98, y - 170, x, y, x - 97, y - 170); //body
  
  fill(255, 229, 179);//Head color
  ellipse(x, y- 200, 200, 200); //head
  
  fill(0,0,0);//Eye color
  ellipse(x - 40, y-200, 50, 50); //left eye
  fill(0,0,0);
  ellipse(x + 40, y-200, 50, 50); //right eye
  

    }
  } else if (key == 'f'|| key == 'F'){
    
       //activates patterned background
        background (255, 255, 255);
   image(img2, 1050,350 );
    image(img3, 570,0 );
     image(img4, 1050,0 );
      image(img5, 0,570 );
       image(img6, 820,200 );
      //need to disable squared background
      
        for(int z = 0; z<=1280; z++){
  square(g,h,j);
  
    square(k,l,m);
    
    fill(123, 210, 196);
  g+=10;
  h+=20;
  j+=10;
  k+=5;
  l+=5;
  m+=5;

  }
      
      fill(123, 72, 48);
  ellipse(500, 300, 50, 30);
    ellipse(700, 400, 50, 30);
      ellipse(600, 500, 50, 30);
        ellipse(700, 600, 50, 30);
          ellipse(600, 700, 50, 30);
  
  
  fill(191, 146, 61); //color for shoes
  ellipse(x - 50, y, 100, 50); //left shoe
  fill(191, 146, 61);
  ellipse(x + 50, y, 100, 50); //right shoe
  fill(247, 30, 30);//Body color
  triangle(x + 98, y - 170, x, y, x - 97, y - 170); //body
  
  fill(255, 229, 179);//Head color
  ellipse(x, y- 200, 200, 200); //head
  
  
  fill(0,0,0);//Eye color
  ellipse(x - 40, y-200, 50, 50); //left eye
  fill(0,0,0);
  ellipse(x + 40, y-200, 50, 50); //right eye
  

  }
  
  else{
    
  }
  
}





void keyPressed()//Movement for the creature
{
  if (key == CODED){
    if(keyCode == UP)
    {
     y -= speed;  
    }
    else if(keyCode == DOWN)
    {
          y += speed;  
    }
    else if(keyCode == RIGHT)
    {
          x += speed;  
    }
    else if(keyCode == LEFT)
    {
          x -= speed;  
    } 
   

  }
}
