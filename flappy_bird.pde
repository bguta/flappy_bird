
Bird flappy;
Pipe[] pipe2;
ArrayList<Pipe> pipe;


int numPipes = 4;
void setup() {
  size(640, 960);
  flappy = new Bird();
  pipe = new ArrayList<Pipe>();
  pipe.add(new Pipe());
}

void draw() {
  background(255);
  flappy.show();
  flappy.update();

  if (frameCount % 200 == 0)
    pipe.add(new Pipe());

  for (Pipe p : pipe) {
    p.update();
    p.show();
    if (p.hit(flappy))
      noLoop();
  }

  for (int i = pipe.size() - 1; i > 0; i--) {
    if (pipe.get(i).isGone())
      pipe.remove(i);
  }
}

void keyPressed() {
  if (key == ' ')
    flappy.fly();
}