// global variable
int backgroundWhite = color(255, 255, 255);
int backgroundBlack = color(0, 0, 0);

// adjust location of circle so it don't hit the text "Score Counter: " and the next circle position.
int randCircleX = (int) random(215,950);
int randCircleY = (int) random(215,650);

Circle[] mainCircle = new Circle[40];
ScoreCounter[] pointCounter = new ScoreCounter[1];

void setup()
{
  size(1200, 800);
  frameRate(30);
  background(backgroundBlack);


  pointCounter[0] = new ScoreCounter(color(56, 255, 54), 60, 0, 340, 100);
  
  
  for(int i = 0; i < mainCircle.length; i++)
  {
    mainCircle[i] = new Circle(color(255, 0, 0), 0, (int) random(215,950), (int) random(215,650), 125);
  }
  
}

void draw()
{
  background(backgroundWhite);

  // ScoreCounter
  pointCounter[0].scoreCounterDisplay();
  
  
  // Circle
  for(int i = 0; i < mainCircle.length; i++)
  {
    mainCircle[i].circleDisplay();
    mainCircle[i].circleReduceSize();
  }
}
