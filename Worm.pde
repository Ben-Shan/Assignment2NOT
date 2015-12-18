void setup()
{
  size(4000,1000);
 
}
boolean up=true;
boolean upDown=true;

float y1=505,y2=515,y3=520;
float x1=500,x2=460,x3=430;
float y11=50,y12=35,y13=25;

float xUp1=50,xUp2=35,xUp3=25;


void draw()
{
    background(0);
  rect(x1,y1,xUp1,50);
  rect(x2,y2,xUp2,35);
  rect(x3,y3,xUp3,25);
 
  
  if(y2==505)
  {
    up=true;
  }
  if(y2==525)
  {
    up=false;
  }
  if(up==true)
  {
    //y1+=1;
    y2+=2;
    y3-=2;
    
    x1++;
    x2++;
    x3++;
  }
  if(up==false)
  {
    //y1-=1;
    y2-=2;
    y3+=2;
    
      x1++;
    x2++;
    x3++;
  }
  
  if(upDown==false&&y1>0)
  {
    y1=-1;
    y2=-1;
    y3=-1;
  }
  if(upDown==true&&y1<505)
  {
    y1=+5;
    y2=+5;
    y3=+5;
  }
    
}

void mousePressed()
{
  upDown=!upDown;
}
