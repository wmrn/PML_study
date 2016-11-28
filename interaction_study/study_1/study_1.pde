//snot bubble
import gifAnimation.*;
GifMaker gifMaker;
float x, y, r, s;
int flag;
void setup() {
  size(400, 400);
  noStroke();
  gifMaker = new GifMaker(this, "study_1.gif");
  gifMaker.setRepeat(0);
  gifMaker.setDelay(20);
}

void draw() {
  background(255);
  x=mouseX;
  y=mouseY;
  fill(0);
  if (flag==0) {
    r-=s;
    if (r<=0) {
      r=0;
    }
  } else {
    r+=s;
  }
  ellipse(x, y, r, r);
  gifMaker.addFrame();
}

void mousePressed() {
  r=0;
  s=random(5);
  flag=1;
}

void mouseReleased() {
  flag=0;
}

void keyPressed() {
  gifMaker.finish();
  exit();
}

