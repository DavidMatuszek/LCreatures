/** A Frame is a drawing area for a single L-organism. */
class Frame {
  int x, y, frameWidth, frameHeight;
  int clearing = 0;
  float clearingSteps = 24.0;
  float mult;
  int number;
  
  /** Constructor for Frames.
   * @param x The horizontal location of the left edge of this Frame.
   * @param y The vertical location of the top edge of this Frame.
   * @param w The width of this Frame.
   * @param h The height of this Frame.
   */
  Frame(int number, int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.frameWidth = w;
    this.frameHeight = h;
    this.mult = frameHeight / clearingSteps;
    
    this.number = number;
    
    pushMatrix();
    translate(x, y);
    ellipse(frameWidth / 2, frameHeight / 2, frameWidth, frameHeight);
    popMatrix();
    
    clearing = 24;
  }
  
  void drawFrame() {
    pushMatrix();
    translate(x, y);
    
    ellipse(frameWidth / 2, frameHeight / 2, frameWidth, frameHeight);
    
//    drawCreature();
    fill(0, 0, 255);
    if (clearing > 0) {
      clearFrame();
    }
    noFill();
    rect(0, 0, frameWidth, frameHeight);
    popMatrix();
  }
  
  void clearFrame() {
    // must already be in correct coordinate system
    int step = 24 - clearing;
    float downto = step * mult;
    fill(255);
    noStroke();
    rect(0, 0, frameWidth, downto);
    stroke(0);
    text(downto + "!", 30, 30);
    clearing -= 1;
  }
}
    
  
  
