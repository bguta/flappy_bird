class Bird {

  private final float gravity = 1;
  private final float lift = 25;
  private final float drag = 0.4;

  private Integer w = 10;
  private Integer h = 100;

  //the location of the bird
  private float x;
  private float y;

  //the speed and velocity
  private float acc;
  private float vel;

  public Bird() {
    this.x = width/4;
    this.y = height/2;
    this.vel = 0;
    this.acc = 0;
  }

  public void show() {
    fill(0);
    rect(this.x, this.y, w, h);
  }     

  public void update() {
    this.vel += gravity - drag;
    this.vel = 0.90*vel;
    if (vel > 30)
      vel = 30;
    this.y += vel;
    edge();
  }

  public void fly() {
    this.vel -= lift;
  }

  private void edge() {
    if (y > height - h - 1) {
      y = height - h;
      this.vel = 0;
    }

    if (y < h + 1) {
      y = h;
      this.vel = 0;
    }
  }
}