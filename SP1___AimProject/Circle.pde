class Circle
{
  color c;
  int circlefill;
  int x;
  int y;
  int diam;
  int diam1;
  

  // constructor for circel
  Circle(color tmpC, int tmpCirclefill, int tmpX, int tmpY, int tmpDiam, int tmpDiam1)
  {
    c = tmpC;
    circlefill = tmpCirclefill;
    x = tmpX;
    y = tmpY;
    diam = tmpDiam;
    diam1 = tmpDiam1;
  }

  void circleDisplay()
  {
    color(c);
    stroke(0);
    fill(circlefill);
    ellipse(x, y, diam, diam);
  }

  void circleReduceSize()
  {
    diam = diam -1;
    diam1 = diam1 -1;
  }
}
