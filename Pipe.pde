class Pipe {
  private float topHead;
  private float bottomHead;
  private float size;
  private final float center;
  private final float w = 100;
  private float x = width - w;
  private float speed = 1.5;

  public Pipe() {
    size = random(200, height/3);
    center = random(size, height - size);

    topHead = center - size/2;
    bottomHead = center + size/2;
  }

  public void show() {

    beginShape();
    fill(0, 255, 0);
    rect(x, topHead, w, -topHead);
    endShape();

    beginShape();
    fill(0, 255, 0);
    rect(x, bottomHead, w, height - bottomHead);
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
    if (b.getX() + b.getW() - 50>= x && b.getX() + 55     <= x + w)
      if (b.getY()+ b.getH() - 50 > bottomHead || b.getY()+ 50 < topHead)
        return true;
    return false;
  }
}