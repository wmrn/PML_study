//tights
int num, r;
void setup() {
  size(400, 400);
  num=300;
  r=width/2;
  background(255);
  translate(width/2, 0);
  for (int x = 0; x < num; x ++) { 
    line(r*cos(radians(x*360/num)), 0, r*sin(radians(x*360/num)), 400);
  }
  save("study_5.png");
}

