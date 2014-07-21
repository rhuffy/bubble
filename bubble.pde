int[] cheesesticks = new int [40];
int n, m, a, b, c;
int x=0;
int y=39;
void setup() 
{
  size(700, 600);
  for(n=0; n<40; n++)  //generate
  {
     cheesesticks[n]=(int)random(5, 500);
  }
}

void draw()
{
  if(x<cheesesticks.length-1)
  {
    background(255);
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
