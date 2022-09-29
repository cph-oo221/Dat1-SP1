class Circle
{
  // global variable
  color c;
  int circlefill;
  int x;
  int y;
  int diam;


  // constructor for circel
  Circle(color c, int circlefill, int x, int y, int diam)
  {
    this.c = c;
    this.circlefill = circlefill;
    this.x = x;
    this.y = y;
    this.diam = diam;
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
    // Make Circle smaller over time.
    if (diam>=0)
    {
      diam--;

      if (diam<=0)
      {
        x=-2000;
        y=-2000;
      }
    }
  }
}
