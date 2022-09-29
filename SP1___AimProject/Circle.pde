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
      
      // when diam is smaller then or equal to 0 the circle teleport of the screen
      if (diam<=0)
      {
        x=-2000;
        y=-2000;
      }
    }
  }
  
  void updateCircleAndScore()
  {

    if (circle.diam < 0)
    {
      circlesDone++;
      if (circlesSpawned < maxCircles)
      {
        circle = new Circle(color(255, 0, 0), 0, (int) random(215, 950), (int) random(215, 650), 125);
        circlesSpawned++;
      }
    }

    if (circlesDone >= maxCircles)
    {
      background(backgroundWhite);
      fill(175);
      textSize(120);
      text("Game Done!", 270, 400);
      score.scoreDisplay();
      println("You scored: " + score.points + " / " + maxCircles);
      noLoop();
    }
  }
}
