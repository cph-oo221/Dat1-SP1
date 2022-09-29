// global variable
int backgroundWhite = color(255, 255, 255);
int backgroundBlack = color(0, 0, 0);

// adjust location of circle so it don't hit the text "Score Counter: " and the next circle position.
int randCircleX = (int) random(215, 950);
int randCircleY = (int) random(215, 650);

int circlesSpawned = 0;
int maxCircles = 40;

Circle circle;

Score score;

TopDisplay topRectDisplay;


void setup()
{
  size(1200, 800);
  frameRate(60);
  background(backgroundBlack);


  score = new Score(color(56, 255, 54), 60, 0, 340, 100);

  circle = new Circle(color(255, 0, 0), 0, randCircleX, randCircleY, 125);
  circlesSpawned++;

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
  
  
  if (circle.diam < 0) {
    circle = new Circle(color(255, 0, 0), 0, randCircleX, randCircleY, 125);
    circlesSpawned++;
  }
  
  if(circlesSpawned > maxCircles)
  {
    background(backgroundWhite);
    
    fill(175);
    textSize(120);
    text("Game Done!", 270, 400);
    score.scoreCounterDisplay();
    println("You scored: " + score.pointScore);
    noLoop();
  }
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
    circlesSpawned++;
  }
}
