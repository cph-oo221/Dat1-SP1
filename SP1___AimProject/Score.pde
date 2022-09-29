class Score
{
  // global variable
  int sizeOFtext;
  float Xpos1;
  float Ypos1;

  float Xpos2 = 740;
  float Ypos2 = 100;

  color textColor;
  int points;
  String currentCricle = "Circles: ";



  // constructor for score
  Score(color textColor, int sizeOFtext, int points, float Xpos1, float Ypos1)
  {
    this.textColor = textColor;
    this.sizeOFtext = sizeOFtext;
    this.points = points;
    this.Xpos1 = Xpos1;
    this.Ypos1 = Ypos1;
  }


  // display the text on screen for the score
  void scoreDisplay()
  {
    fill(textColor);
    textSize(sizeOFtext);
    text(currentCricle + circlesSpawned + " / " + maxCircles, Xpos1, Ypos1);
    text("score: " + points, Xpos2, Ypos2);
  }


  // updating the point +1
  void addScore()
  {
    points++;
  }

  void topDisplay()
  {
    // lokal variables for rectangle
    float Xpos = 0;
    float Ypos = 0;
    float rectWidthPos = 1199;
    float rectHeightPos = 155;
    int rectStroke = 0;
    color rectColor = color(147, 144, 144);

    stroke(rectStroke);
    fill(rectColor);
    rectMode(CORNER);
    rect(Xpos, Ypos, rectWidthPos, rectHeightPos);
  }
}
