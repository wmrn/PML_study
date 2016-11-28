//mortise
void setup() {
  size(400, 400);
  int r=width/2-10;
  int num=150;
  background(255);
  translate(width/2, height/2);
  for (int x = 0; x < num; x ++) {
    rotate(10);
    line(r*cos(radians(36*x)), r*sin(radians(36*x)), 0, random(r));
  }
  save("study_3.png");
}

