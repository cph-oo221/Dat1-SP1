class TopDisplay
{
  float rectXpos;
  float rectYpos;
  float rectWidthPos;
  float rectHeightPos;
  
  int rectStrokeColor;
  color rectColor;
  
  TopDisplay(float tempRectXpos, float tempRectYpos, float tempeRctWidthPos, float tempRectHeightPos, int tempRectStrokeColor, color tempRectColor)
  {
    rectXpos = tempRectXpos;
    rectYpos = tempRectYpos;
    rectWidthPos = tempeRctWidthPos;
    rectHeightPos = tempRectHeightPos;
    
    rectStrokeColor = tempRectStrokeColor;
    rectColor = tempRectColor;  
  }
  
  void TopDisplayRect()
  {
    stroke(rectStrokeColor);
    fill(rectColor);
    rectMode(CORNER);
    rect(rectXpos, rectYpos, rectWidthPos, rectHeightPos);
  }
}
