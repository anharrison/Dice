void setup()
{
  size(1000, 1000);
  noLoop();
}
void draw()
{
  background(100,((int)(Math.random()*256)),((int)(Math.random()*256)));
  int total= 0;
  for (int y=15; y< 800; y= y+60)
  {
    for (int x = 15; x<950; x=x+60)
    {
      Die bob = new Die(x, y);
      bob.show();
      total = total+bob.numDots;
    }
  }
    text("NUMBER ROLLED:"+total, 270, 930);
}
void mousePressed()
{
  redraw();
}
class Die
{ 
  int myX, myY, numDots;
  Die(int x, int y)
  {
    myX=x;
    myY=y;
    numDots=(int)(Math.random()*6 +1);
  }
  void roll()
  {
    
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50, 10);
    if (numDots == 1)
    {
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (numDots==2)
    {
      fill(0);
      ellipse(myX+15, myY+25, 10, 10);
      ellipse(myX+35, myY+25, 10, 10);
    } else if (numDots==3)
    {
      fill(0);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
    } else if (numDots==4)
    {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if (numDots==5)
    {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (numDots==6)
    {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
    }
    textSize(50);

  }
}
