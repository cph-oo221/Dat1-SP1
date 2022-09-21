int backgroundColor = color(255,255,255);
Circle mainCircle;

void setup()
{
  size(1200,800);
  // frameRate(120);
  background(backgroundColor); 
  
 
}

/* int circleTotal = 40;
Circle[] cMain = new Circle[circleTotal]; **/

void draw()
{
  mainCircle.circleReduceSize();
  mainCircle.circleDisplay();
  mainCircle = new Circle(color(255,0,0), 0, 200, 300, 125, 125);
  
}
