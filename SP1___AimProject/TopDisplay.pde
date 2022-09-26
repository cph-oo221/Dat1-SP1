class TopDisplay
{
  float rectXpos;
  float rectYpos;
  float rectWidthPos;
  float rectHeightPos;
  
  int rectStrokeColor;
  color rectColor;
  
  TopDisplay(float tempRectXpos, float tempRectYpos, float tempeRctWidthPos, float tempRectHeightPos)
  {
    rectXpos = tempRectXpos;
    rectYpos = tempRectYpos;
    rectWidthPos = tempeRctWidthPos;
    rectHeightPos = tempRectHeightPos;
  }
  
  void TopDisplayRect()
  {
    stroke(rectStrokeColor);
    fill(rectColor);
    rectMode(CENTER);
    rect(rectXpos, rectYpos, rectWidthPos, rectHeightPos);
  }
}
