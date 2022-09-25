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
  
  
  void circleReduceSize()
  {
    // Make Circle over time smaller.
    if (diam>=0)
    {
      diam--;
      lifespan--;
    }
    
    // when a circle is pressed it disappears
    float distance = dist(mouseX, mouseY, x, y);
    if(mousePressed)
    {
      if(distance < diam)
      {
        diam=-1;
      }
    }
  }
}
