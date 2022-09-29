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
    // end game text
    int sizeText1 = 120;
    int Xpos1 = 270;
    int Ypos1 = 400;
    int Fill1 = 175;
    
    // reset game text
    int sizeText2 = 70;
    int Xpos2 = 245;
    int Ypos2 = 600;
    int Fill2 = color(255, 0, 0);
    
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
      
      // End Screen
      background(backgroundWhite);
      fill(Fill1);
      textSize(sizeText1);
      text("Game Done!", Xpos1, Ypos1);
      score.scoreDisplay();
      println("You scored: " + score.points + " / " + maxCircles);
      
      //reset text
      fill(Fill2);
      textSize(sizeText2);
      text("Press (R) for game reset", Xpos2, Ypos2);
      println("Press R to reset game!");
      
      noLoop();
    }
  }
}
