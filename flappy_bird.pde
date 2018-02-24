
Bird flappy;

void setup() {
  size(640, 960);
  flappy = new Bird();
}

void draw() {
  background(255);
  flappy.show();
  flappy.update();
}

void keyPressed(){
  if (key == ' ')
      flappy.fly(); 
}