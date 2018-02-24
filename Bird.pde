class Bird {

  //movement
  private final float gravity = 1;
  private final float lift = 25;
  private float vel;

  //bird width and height
  private Integer w = 15;
  private Integer h = 10;

  //the location of the bird
  private float x;
  private float y;

  public Bird() {
    this.x = width/4;
    this.y = height/2;
    this.vel = 0;
  }

  public void show() {
    fill(0);
    rect(this.x, this.y, w, h);
  }     

  public void update() {
    this.vel += gravity;
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
      this.vel = 1;
    }
  }
  
  public float getY(){
    return y;
  }
  public float getX(){
    return x;
  }
  public float getH(){
    return h;
  }
  public float getW(){
    return w;
  }
    
}