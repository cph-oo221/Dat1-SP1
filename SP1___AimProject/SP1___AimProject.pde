int backgroundWhite = color(255, 255, 255);
int backgroundBlack = color(0, 0, 0);

// adjust location of circle so it don't hit the text "Score Counter: " and the next circle position.
int randCircleX = (int) random(215,950);
int randCircleY = (int) random(215,650);

Circle[] mainCircle = new Circle[40];
ScoreCounter[] gameCounter = new ScoreCounter[1];

void setup()
{
  size(1200, 800);
  frameRate(30);
  background(backgroundBlack);


  gameCounter[0] = new ScoreCounter(color(56, 255, 54), 60, 0, 400, 100);
  
  
  for(int i = 0; i < mainCircle.length; i++)
  {
    mainCircle[i] = new Circle(color(255, 0, 0), 0, (int) random(215,950), (int) random(215,650), 125, 255);
  }
}

void draw()
{
  background(backgroundWhite);

  // ScoreCounter
  gameCounter[0].scoreCounterDisplay();
  gameCounter[0].scoreCounterUpdate();
  
  // Circle
  for(int i = 0; i < mainCircle.length; i++)
  {
    mainCircle[i].circleDisplay();
    mainCircle[i].circleReduceSize();
  }
}

void mousePressed()
{
  for(int i = 0; i < gameCounter[0].scoreNumber; i++)
  {
    float myDist = dist(mainCircle[i].x -mouseX, mainCircle[i].y -mouseY,  mouseX, mouseY);
    if(myDist<=mainCircle[i].diam)
    {
      gameCounter[0].scoreNumber++;
    }
  }
}

/* for(int i = 0; i < gameCounter.scoreNumber; i++)
  {
    float dist = sqrt((mainCircle.x - mouseX) * (mainCircle.x - mouseX) + (mainCircle.y - mouseY) * (mainCircle.y - mouseY));
    if(dist<=1)
    {
      gameCounter.scoreNumber++;
    }
  } **/


/* for(int i = mainCircle.length - 1; i>=0; i--)
   {
   mainCircle[i].circleDisplay();
   mainCircle[i].circleReduceSize();
   if (mainCircle[i].lifespan < 0)
   {
   mainCircle.splice(i, 1);
   }
   } **/
