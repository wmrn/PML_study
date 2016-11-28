//twist
int num, r;
void setup() {
  size(400, 400);
  num=300;
  r=width/2;
  background(255);
  translate(width/2, -height/2);
  for (int x = 0; x < num; x ++) { 
    line(r*cos(radians(x*360/num)), x*4, r*sin(radians(x*360/num)), 400);
  }
  save("study_6.png");
}

