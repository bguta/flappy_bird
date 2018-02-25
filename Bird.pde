class Bird {

  //movement
  private final float gravity = 1;
  private final float lift = 25;
  private float vel;

  //bird width and height
  private float w = 150;
  private float h = 150;

  //the location of the bird
  private float x;
  private float y;

  public Bird() {
    this.x = width/4;
    this.y = height/2;
    this.vel = 0;
  }

  public void show(PImage b) {
    image(b,this.x,this.y,w,h);
    //line(this.x,this.y,this.x,this.y + 45);
    //line(this.x,this.y,this.x + w, this.y);
    //rect(this.x, this.y, w, h);
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
    if (y > height - h/2 - 30) {
      y = height - h/2 -  30;
      this.vel = 0;
    }

    if (y < 0) {
      y = 0;
      this.vel = 1;
    }
  }
  
  //getter methods
  
  
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