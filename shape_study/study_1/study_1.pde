//coaster
void setup() {
  size(400, 400);
  background(255);
  translate(width/2, height/2);
  for (int i=0; i<6; i++) {
    rotate(radians(30));
    l();
  }
  save("study_1.png");
}

void l() {
  for (int i=0; i<400/5; i++) {
    line(-width/2, -height/2+i*5, width/2, -height/2+i*5);
  }
}

void keyPressed() {
  save("study_1.png");
}

