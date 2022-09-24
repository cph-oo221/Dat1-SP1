int backgroundColor = color(255, 255, 255);
Circle mainCircle;
ScoreCounter gameCounter;

void setup()
{
  size(1200, 800);
  frameRate(30);
  background(backgroundColor); 
  
  
  gameCounter = new ScoreCounter(color(56, 255, 54), 80, 0, 580, 100);
  mainCircle = new Circle(color(255, 0, 0), 0, 200, 300, 125, 255);
  
  
}

// Circle[] mainCircle = new Circle[circleTotal];



void draw()
{
  background(175);
  
  // ScoreCounter
  gameCounter.scoreCounterDisplay();
  gameCounter.scoreCounterUpdate();
  
  mainCircle.circleDisplay();
  mainCircle.circleReduceSize();
  
  
 /* for(int i = mainCircle.length - 1; i>=0; i--)
  {
    mainCircle[i].circleDisplay();
    mainCircle[i].circleReduceSize();
    if (mainCircle[i].lifespan < 0)
    {
      mainCircle.splice(i, 1);
    }
  } **/
   
 
 
}
