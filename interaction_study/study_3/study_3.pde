//flower
import gifAnimation.*;
GifMaker gifMaker;
int r=100;
int flag, theta;
int s=50;
void setup() {
  size(400, 400);
  gifMaker = new GifMaker(this, "study_3.gif");
  gifMaker.setRepeat(0);
  gifMaker.setDelay(20);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  if (flag==1) {
    theta++;
    r--;
    s--;
    if (s<0) {
      s=0;
    }
  } else {
    theta--;
    r++;
    s++;
    if (theta<0) {
      theta=0;
    }
    if (r>100) {
      r=100;
    }
    if (s>50) {
      s=50;
    }
  }
  for (int i=0; i<10; i++) {
    fill(0);
    ellipse(r*cos(radians(36*i+theta)), r*sin(radians(36*i+theta)), s, s);
  }
  gifMaker.addFrame();
}

void mousePressed() {
  flag=1;
}

void mouseReleased() {
  flag=0;
}

void keyPressed() {
  gifMaker.finish();
  exit();
}

