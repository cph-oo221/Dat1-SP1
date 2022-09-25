class Circle
{
  color c;
  int circlefill;
  int x;
  int y;
  int diam;
  int lifespan;


  // constructor for circel
  Circle(color tmpC, int tmpCirclefill, int tmpX, int tmpY, int tmpDiam, int tempLifespan)
  {
    c = tmpC;
    circlefill = tmpCirclefill;
    x = tmpX;
    y = tmpY;
    diam = tmpDiam;
    lifespan = tempLifespan;
  }

  void circleDisplay()
  {
     color(c);
     stroke(175);
     fill(circlefill);
     ellipse(x, y, diam, diam);
  }
// , this.lifespan
  void circleReduceSize()
  {

    if (diam>=0)
    {
      diam--;
      lifespan--;
    }
  }
}
