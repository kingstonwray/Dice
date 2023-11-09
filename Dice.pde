Die aDie;
int cols;
int rows;
int offset = 20;
int total = 0;
void setup() {
  size(1000, 1000);
  cols = width/200;
  rows = height/200-1;
  aDie = new Die();
  noLoop();
}
void draw() {
  total = 0;
  for (int y = 0; y < rows; y++) {
    System.out.println();
    for ( int x = 0; x < cols; x++) {
      aDie.curNum = aDie.roll();
      total += aDie.curNum;
      aDie.show(200*x, 200*y);
    }
  }
  text("Total:"+total, 200, 950);
}
