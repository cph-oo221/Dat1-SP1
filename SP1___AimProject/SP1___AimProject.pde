// global variable
int backgroundWhite = color(255, 255, 255);
int backgroundBlack = color(0, 0, 0);

// adjust location of circle so it doesn't hit the text "Score Counter: " and the next circle position.
// if the variable name isn't in used, it's because it stacks the circle on top for each other
int randCircleX = (int) random(215, 950);
int randCircleY = (int) random(215, 650);

// circlesSpawned: how many circles has been display, and the max amount of circles
int circlesSpawned = 0;
int maxCircles = 30;

int circlesDone = 0;


Circle circle;
Score score;
Reset reset;


void setup()
{
  size(1200, 800);
  frameRate(60);
  background(backgroundBlack);
  
  reset = new Reset();

  score = new Score(color(56, 255, 54), 60, 0, 250, 100);

  circle = new Circle(color(255, 0, 0), 0, randCircleX, randCircleY, 125);
  circlesSpawned++;
}



void draw()
{
  background(backgroundWhite);

  // TopDisplay's box for score
  score.topDisplay();

  // Display Score
  score.scoreDisplay();


  circle.circleDisplay();
  circle.circleReduceSize();
  circle.updateCircleAndScore();
}

void mousePressed()
{
  // If in side circle
  float distance = dist(mouseX, mouseY, circle.x, circle.y);
  if (distance < circle.diam)
  {

    // Makes the point counter go up with 1 every time a circle gets clicked
    score.addScore();
    
    // Prints: "Bang, Bang!!" when a circle get pressed
    println("Bang, Bang!!");
    
    // when a circle is pressed add 1 to circlesDone.
    circlesDone++;
    
    // if circlesSpawned is smaller then maxCircles make new circle and add 1 to circlesSpawned.
    if (circlesSpawned < maxCircles)
    {
      circle = new Circle(color(255, 0, 0), 0, (int) random(215, 950), (int) random(215, 650), 125);
      circlesSpawned++;
    }
  }
}


void keyPressed()
{
  // if the r/R key gets pressed it executes the function reset from class Reset.
  if(key == 'r' || key == 'R')
  {
    reset.reset();
  } 
}
