//march
import gifAnimation.*;
GifMaker gifMaker;
ArrayList list= new ArrayList();

void setup() {
  size(400, 400);
  gifMaker = new GifMaker(this, "study_4.gif");
  gifMaker.setRepeat(0);
  gifMaker.setDelay(20);
}

void draw() {
  background(255);
  for (int i = list.size ()-1; i >= 0; i--) { 
    Column column = (Column)list.get(i);
    column.move();
  }
  gifMaker.addFrame();
}

void mousePressed() {
  list.add(new Column());
  for (int i = list.size ()-1; i >= 0; i--) { 
    Column column = (Column)list.get(i);
    column.mousepressed();
  }
}

void mouseReleased() {
  for (int i = list.size ()-1; i >= 0; i--) { 
    Column column = (Column)list.get(i);
    column.mousereleased();
  }
}

void keyPressed() {
  gifMaker.finish();
  exit();
}

class Column {
  int y, r, flag;
  Column() {
    y=-26;
    r=50;
    flag=1;
  }
  void move() {
    for (int i=0; i<6; i++) {
      fill(0);
      ellipse(i*80, y, r, r);
    } 
    if (flag==1) {   
      y+=2;
    }
    if (y>height+26) {
      y=-26;
      flag=0;
    }
  }

  void mousepressed() {
    r=60;
  }

  void mousereleased() {
    r=50;
  }
}

