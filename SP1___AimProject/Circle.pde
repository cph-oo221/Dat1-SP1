class Circle
{
  color c;
  int circlefill;
  int x;
  int y;
  int diam;

  // constructor for circel
  Circle(color tmpC, int tmpCirclefill, int tmpX, int tmpY, int tmpDiam)
  {
    c = tmpC;
    circlefill = tmpCirclefill;
    x = tmpX;
    y = tmpY;
    diam = tmpDiam;
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
    diam = diam +1;
    diam = diam +1;
  }
}
