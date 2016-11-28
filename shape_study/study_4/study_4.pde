//squares
//再帰がわからなくてあきらめたマン。
void setup() {
  size(400, 400);
  background(255);
  for (int i=0; i<width; i+=3) {
    float l1=random(height);
    line(i, 0, i, l1);
    if (l1<height) {
      float l2=random(height);
      line(i, l1+5, i, l1+5+l2);
      if (l1+5+l2<height) {
        float l3=random(height);
        line(i, l1+10+l2, i, l1+10+l2+l3);
        if (l1+5+l2+l3<height) {
          float l4=random(height);
          line(i, l1+15+l2+l3, i, l1+15+l2+l3+l4);
          if (l1+5+l2+l3+l4<height) {
            float l5=random(height);
            line(i, l1+20+l2+l3+l4, i, l1+20+l2+l3+l4+l5);
          }
        }
      }
    }
  }
  for (int j=0; j<height; j+=5) {
    float l1=random(width);
    line(0, j, l1, j);
    if (l1<height) {
      float l2=random(height);
      line(l1+5, j, l1+l2, j);
    }
  }
  save("study_4.png");
}

