class Score
{
  // global variable
  int sizeOFtext;
  float Xpos;
  float Ypos;

  color textColor;
  int points;
  String currentScore = "Circles: ";
  


  // constructor for circel
  Score(color textColor, int sizeOFtext, int points, float Xpos, float Ypos)
  {
    this.textColor = textColor;
    this.sizeOFtext = sizeOFtext;
    this.points = points;
    this.Xpos = Xpos;
    this.Ypos = Ypos;
  }


  // display the text on screen for the score
  void scoreCounterDisplay()
  {
    fill(textColor);
    textSize(sizeOFtext);
    text(currentScore + circlesSpawned + " / " + maxCircles, Xpos, Ypos);
    text("score: " + points, 740, 100);
  }


  // updating the score on the screen
  void addScore()
  {
    points++;
  }
}
