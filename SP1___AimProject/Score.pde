class Score
{
  // global variable
  int sizeOFtext;
  float textXpos;
  float textYpos;

  color colorOFscoreCounter;
  int pointScore;
  String currentScore = "Score Counter: ";
  String scoreMax = " / 40";


  // constructor for circel
  Score(color tempColorOFscoreCounter, int tempSizeOFtext, int tempPointScore, float tempTextXpos, float tempTextYpos)
  {
    colorOFscoreCounter = tempColorOFscoreCounter;
    sizeOFtext = tempSizeOFtext;
    pointScore = tempPointScore;
    textXpos = tempTextXpos;
    textYpos = tempTextYpos;
  }

  // display the text on screen for the score
  void scoreCounterDisplay()
  {
    fill(colorOFscoreCounter);
    textSize(sizeOFtext);
    text(currentScore + pointScore + scoreMax, textXpos, textYpos);
  }

  // updating the score on the screen
  void addScore()
  {
    pointScore++;
    
  }
}
