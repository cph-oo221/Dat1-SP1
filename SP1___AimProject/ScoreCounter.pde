public class ScoreCounter
{
  int sizeText;
  color scoreColor;
  int scoreNumber;
  float textX;
  float textY;
  String text = "Score Counter: ";



  // constructor for circel
  ScoreCounter(color tempColor, int tempSizeText, int tempNumber, float tempX, float tempY)
  {
    scoreColor = tempColor;
    sizeText = tempSizeText;
    scoreNumber = tempNumber;
    textX = tempX;
    textY = tempY;
  }
  
  // display the text on screen for the score
  void scoreCounterDisplay()
  {
    fill(scoreColor);
    textSize(sizeText);
    text(text + scoreNumber, textX, textY);
  }
  
  // updating the score on the screen
  void scoreCounterUpdate()
  {
    /* int counter = scoreNumber;
      for(int i = 0; i<=counter; i++)
      {
        scoreNumber++;
      }
    
    **/
  }  
}
