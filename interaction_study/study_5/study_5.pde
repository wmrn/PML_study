//sleep
import gifAnimation.*;
GifMaker gifMaker;
ArrayList list= new ArrayList();

void setup() {
  size(400, 400);
  gifMaker = new GifMaker(this, "study_5.gif");
  gifMaker.setRepeat(0);
  gifMaker.setDelay(20);
}

void draw() {
  background(255);
  translate(width/2, 0);
  fill(0);
  ellipse(250*cos(radians(90)), 250*sin(radians(90)), 50, 50);
  for (int i = list.size ()-1; i >= 0; i--) { 
    Yen yen = (Yen)list.get(i);
    yen.move();
  }
  gifMaker.addFrame();
}

void mousePressed() {
  list.add(new Yen());
}

void keyPressed() {
  gifMaker.finish();
  exit();
}

class Yen {
  int num, flag, theta;
  Yen() {
    num=1;
    flag=0;
    theta=90;
  }
  void move() {
    theta+=num;
    fill(0);
    ellipse(250*cos(radians(theta)), 250*sin(radians(theta)), 50, 50);
    if (theta>135) {
      num=-num;
    }
    if (theta<45) {
      num=-num;
    }
  }
}

