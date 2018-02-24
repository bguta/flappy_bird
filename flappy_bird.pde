Score score;
Bird flappy;
ArrayList<Pipe> pipe;
char space = ' ';
PImage bird;

//use spacebar
void keyPressed() {
  if (key == space)
    flappy.fly();
}

void setup() {
  size(640, 960);
  flappy = new Bird();
  pipe = new ArrayList<Pipe>();
  pipe.add(new Pipe());
  bird = loadImage("bird.png");
  score = new Score();
}

void draw() {
  background(255);
  flappy.show(bird);
  flappy.update();
 

  for (Pipe p : pipe) {
    p.update();
    p.show();
    score.show();
    if (p.hit(flappy))
      noLoop();
    if(p.passed())
      score.update();
  }
  

  for (int i = pipe.size() - 1; i > 0; i--)
    if (pipe.get(i).isGone())
      pipe.remove(i);
  
  if (frameCount % 200 == 0)
    pipe.add(new Pipe());
}