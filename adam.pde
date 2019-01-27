int numFrames = 4;  // The number of frames in the animation


    

Yuru[] ads = new Yuru[10];

void setup() {
  size(800, 600);
  for (int i = 0; i < ads.length; i++) {
    ads[i] = new Yuru();
    ads[i].olustur();
  }
  
} 
 
void draw() { 
  background(255);
  for (int i = 0; i < ads.length; i++) {
  
  ads[i].show();
  ads[i].walk();
  }
}
