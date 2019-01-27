class Yuru {
  float x = random(-150, -10);
  float t, y;
  float xspeed = random(4,12);
  int currentFrame = int(random(0,3)); 
  int boy = int(height/8);
  int satih = height/16;
  
  PImage[] images = new PImage[4];
  
  void olustur(){
  //t = int(random(0, 10));
  t = random(0, 10);
  images[0]  = loadImage("adam0.png");
  images[1]  = loadImage("adam1.png");
  images[2]  = loadImage("adam2.png");
  images[3]  = loadImage("adam3.png");
      for (int a = 0; a < 4; a++) {
      images[a].resize(0, boy);
    }
    
    
    
}

  
  
  void walk () {
    frameRate(15);
    currentFrame = (currentFrame+1) % numFrames;  
  }
  
  void show() {
    
    y = int(t * satih);
    x = x + xspeed;
    image(images[(currentFrame) % numFrames], x, y); 
    
    
    if ( x >width) {
    x =   random(-1*width/5, -10);
    xspeed = random(4,12);
    }  
  
}

}
