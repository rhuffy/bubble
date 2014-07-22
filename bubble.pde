int[] cheesesticks = new int [40];
int n, m, a, b, c;
int x;
int y;
boolean pause = false;
void setup() 
{
  size(700, 600);
  background(255);
  reset();
  
}

void draw()
{
  
  if(mousePressed==true&&mouseX>15&&mouseX<115&&mouseY>550&&mouseY<570)
  {
    reset();
  }
  
  if(mousePressed==true&&mouseX>125&&mouseX<225&&mouseY>550&&mouseY<570)
  {
    if(pause==false)
    {
      pause=true;
    }
    else if(pause==true)
    {
      pause=false;
    }
  }
  
  if(pause==false)
  {
    if(x<cheesesticks.length-1)
  {
    background(255);
    fill (255,255,0);
    rect(15,550,100,20);
    fill (255,0,255);
    rect(125,550,100,20);
    for(m=0; m<40; m++)  //display
    {
       fill (0, 255, 0);
       rect(m*15+5, 0, 10, cheesesticks[m]);
    }
    
    a=cheesesticks[x];  //sort
    b=cheesesticks[x+1];
    if(b<a)
    {
       c=a;
       a=b;
       b=c;
    }
    cheesesticks[x]=a;
    cheesesticks[x+1]=b;
    if(x<40)
    {
      x++;
    }
    if(x==y&&y>0)
    {
       x=0;
       y--;
    }
    
      for(m=0; m<40; m++)  //print
    {
       print(cheesesticks[m], "\n");
    }
  }   
  }
  
}


void reset()
{
  for(n=0; n<40; n++)  //generate
  {
     cheesesticks[n]=(int)random(5, 500);
  }
  
  x=0;
  y=39;
}
