//carpet
void setup() {
  size(400, 400);
  background(255);
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      map(i*100, j*100);
    }
  }
  save("study_2.png");
}

void map(int x, int y) {//100*100
  pushMatrix();
  translate(x, y);
  for (int i=0; i<25; i++) {
    strokeWeight(random(5));
    line(i*4, 0, i*4, 100);
  } 
  popMatrix();
}
