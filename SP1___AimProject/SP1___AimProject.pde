

// global variable
int backgroundWhite = color(255, 255, 255);
int backgroundBlack = color(0, 0, 0);

// adjust location of circle so it don't hit the text "Score Counter: " and the next circle position.
int randCircleX = (int) random(215, 950);
int randCircleY = (int) random(215, 650);



Circle circle;

ScoreCounter score;

TopDisplay topRectDisplay;


void setup()
{
  size(1200, 800);
  frameRate(30);
  background(backgroundBlack);


  score = new ScoreCounter(color(56, 255, 54), 60, 0, 340, 100);

  circle = new Circle(color(255, 0, 0), 0, (int) random(215, 950), (int) random(215, 650), 125);


  topRectDisplay = new TopDisplay(0, 0, 1199, 155, 0, color(147, 144, 144));
  
}

void draw()
{
  background(backgroundWhite);

  // TopDisplay
  topRectDisplay.TopDisplayRect();

  // ScoreCounter
  score.scoreCounterDisplay();


  circle.circleDisplay();
  
  circle.circleReduceSize();
}

void mousePressed()
{
  float distance = dist(mouseX, mouseY, circle.x, circle.y);

  if (distance < circle.diam)
  {
    circle.diam=-1;
    
    // Makes the point counter go op with 1 every time a circle gets clicked
    score.addScore();

    println("Bang, Bang!!");
    circle = new Circle(color(255, 0, 0), 0, (int) random(215, 950), (int) random(215, 650), 125);
  }
  
  
}
