//catch
import gifAnimation.*;
GifMaker gifMaker;
float x, y;
int flag;
int nx=1;
int ny=1;
void setup() {
  size(400, 400);
  x=width/2;
  y=height/2;
  gifMaker = new GifMaker(this, "study_2.gif");
  gifMaker.setRepeat(0);
  gifMaker.setDelay(20);
}

void draw() {
  background(255);
  if (flag==1) {
    x=mouseX+random(3);
    y=mouseY+random(3);
  } else {
    x+=nx;
    y+=ny;
    if (x<25) {
      x=25;
      nx=-nx;
    }
    if (x>width-25) {
      x=width-25;
      nx=-nx;
    }
    if (y>height-25) {
      y=height-25;
      ny=-ny;
    }
    if (y<25) {
      y=25;
      ny=-ny;
    }
  }
  fill(0);
  ellipse(x, y, 50, 50);
  gifMaker.addFrame();
}

void mousePressed() {
  if (get(mouseX, mouseY)==-16777216) {
    flag=1;
  }
}

void mouseReleased() {
  flag=0;
  x=mouseX;
  y=mouseY;
}

void keyPressed() {
  gifMaker.finish();
  exit();
}

