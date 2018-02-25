class Score{
  
  private PFont num;
  private int score;
  
  public Score(){
    score = 0;
    num = createFont("Arial",16,true);
  }
  
  public void show(){
    textFont(num,100);
    fill(255);
    text(str(score),width/2,height/3);
  }
  
  public void update(){
    this.score++;
  }
  
  
}