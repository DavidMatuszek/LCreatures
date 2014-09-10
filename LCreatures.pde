int windowWidth = 900;
int windowHeight = 600;
int nRows = 5;
int nCols = 3;
int frameWidth = windowWidth / nCols;
int frameHeight = windowHeight / nRows;

ArrayList<Frame> frames = new ArrayList<Frame>();
int count = 1;

/** Creates (nRows * nCols) Frames and saves them in the 'frames' list. */
void setup() {
  frameRate(60);
  size(windowWidth, windowHeight);
  for (int i = 0; i < nRows; i++) {
    for (int j = 0; j < nCols; j++) {
      Frame f = new Frame(count, j * frameWidth,
                          i * frameHeight,
                          frameWidth,
                          frameHeight);
      frames.add(f);
      count += 1;
      println(frames.size());
    }
  }
}
  
void draw() {
  background(255);
  for (Frame f : frames) {
    f.drawFrame();
  }
}




