class Pipe {
  private float topHead;
  private float bottomHead;
  private float size;
  private final float center;
  private final float w = 100;
  private float x = width;
  private float speed = 1.5;
  private boolean passed = false;

  public Pipe() {
    size = random(200, height/3);
    center = random(size, height - size);

    topHead = center - size/2;
    bottomHead = center + size/2;
  }

  public void show() {
    strokeWeight(10);

    //top
    beginShape();
    fill(0, 128, 0);
    rect(x, topHead, w, -topHead);
    fill(0);
    line(x, topHead - 50, x + w, topHead - 50);
    endShape();
    
    //bottom
    beginShape();
    fill(0, 128, 0);
    rect(x, bottomHead, w, height - bottomHead);
    fill(0);
    line(x, bottomHead + 50, x + w, bottomHead + 50);
    endShape();
  }

  public void update() {
    this.x -= speed;
  }

  public boolean isGone() {
    if (this.x + w < 0)
      return true;
    return false;
  }

  public boolean hit(Bird b) {
    if (b.getX() + b.getW() - 50 >= x && b.getX() + 50     <= x + w)
      if (b.getY()+ b.getH() - 50 > bottomHead || b.getY()+ 45 < topHead)
        return true;
    return false;
  }

  public boolean passed() {
    if (x+w < width/4 + 80 && !passed) {
      passed = true;
      return true;
    }

    return false;
  }
}