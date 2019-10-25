Die die,die1,die2,die3,die4,die5,die6,die7,die8;
Die[] dice;
int total,count1,count2,count3,count4,count5,count6;

void setup()
{
  size(600,600);
  dice=new Die[9];
  //noLoop();
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      dice[i*3+j] = new Die(110*i+10, 110*j+10);
    }
  }
}

void draw()
{
  background(0,0,0);
  
  for(Die x: dice)
  { 
    x.show();
  }
  
  if(frameCount%30==0)
  {
    for(Die x: dice)
    {
      x.roll();
      total+=x.rand;
    }
  }
  fill(255);
  textSize(20);
  text("Total: ",25,375);
  text(total,85,375);
  
  text("Ones: ",25,400);
  text(count1,85,400);
  
  text("Twos: ",25,425);
  text(count2,85,425);
  
  text("Threes: ",25,450);
  text(count3,100,450);
  
  text("Fours: ",25,475);
  text(count4,95,475);
  
  text("Fives: ",25,500);
  text(count5,85,500);
  
  text("Sixes: ",25,525);
  text(count6,85,525);
  
  fill(255);
  
}

void mousePressed()
{
  redraw();
}



class Die
{
  private int x;
  private int y;
  private int rand;
  
  Die(int x, int y) 
  {
    this.x=x;
    this.y=y;
    rand=(int)(Math.random()*6)+1;
  }
  
  void roll()
  {
    rand=(int)(Math.random()*6)+1;
    switch(rand)
    {
      case 1:
      count1++;
      break;
      case 2:
      count2++;
      break;
      case 3:
      count3++;
      break;
      case 4:
      count4++;
      case 5:
      count5++;
      break;
      case 6:
      count6++;
      break;
    }
  }
  
  void show()
  {
      System.out.println(rand);
      
      if(rand==1)
      {
       fill(#FF0303);
       rect(x,y,100,100,10,10,10,10);
       fill(0,0,0);
       ellipse(x+50,y+50,20,20);
       //total+=1;
       //count1++;
      }
      
      if(rand==2)
      {
       fill(#3F00FF);
       rect(x,y,100,100,10,10,10,10);
       fill(0,0,0);
       ellipse(x+25,y+25,20,20);
       ellipse(x+75,y+75,20,20);
       //total+=2;
       //count2++;
      }
      
      if(rand==3)
      {
       fill(#00FF28);
       rect(x,y,100,100,10,10,10,10);
       fill(0,0,0);
       ellipse(x+25,y+25,20,20);
       ellipse(x+50,y+50,20,20);
       ellipse(x+75,y+75,20,20);
       //total+=3;
       //count3++;
      }
      
      if(rand==4)
      {
       fill(#FFEA00);
       rect(x,y,100,100,10,10,10,10);
       fill(0,0,0);
       ellipse(x+25,y+25,20,20);
       ellipse(x+25,y+75,20,20);
       ellipse(x+75,y+25,20,20);
       ellipse(x+75,y+75,20,20);
       //total+=4;
       //count4++;
      }
      
      if(rand==5)
      {
       fill(#FF8000);
       rect(x,y,100,100,10,10,10,10);
       fill(0,0,0);
       ellipse(x+25,y+25,20,20);
       ellipse(x+25,y+75,20,20);
       ellipse(x+50,y+50,20,20);
       ellipse(x+75,y+25,20,20);
       ellipse(x+75,y+75,20,20);
       //total+=5;
       //count5++;
      }
      
       if(rand==6)
      {
       fill(#FF00F3);
       rect(x,y,100,100,10,10,10,10);
       fill(0,0,0);
       ellipse(x+25,y+20,20,20);
       ellipse(x+25,y+50,20,20);
       ellipse(x+25,y+80,20,20);
       ellipse(x+75,y+20,20,20);
       ellipse(x+75,y+50,20,20);
       ellipse(x+75,y+80,20,20);
       //total+=6;
       //count6++;
      }
  }
}
