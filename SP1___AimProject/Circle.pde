class Circle
{
  color c;
  int circlefill;
  int x;
  int y;
  int diam;
  int lifespan;


  // constructor for circel
  Circle(color tmpC, int tmpCirclefill, int tmpX, int tmpY, int tmpDiam, int lifespand)
  {
    c = tmpC;
    circlefill = tmpCirclefill;
    x = tmpX;
    y = tmpY;
    diam = tmpDiam;
    this.lifespan = 255;
  }

  void circleDisplay()
  {
    color(c);
    stroke(175);
    fill(circlefill, this.lifespan);
    ellipse(x, y, diam, diam);
  }

  void circleReduceSize()
  {

    if (diam>=0)
    {
      diam = diam -1;
      this.lifespan--;
    }
  }
  
  void mouseClicked()
  {
    
  }
  
  
}
