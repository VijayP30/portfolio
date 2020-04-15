private float fractionLength = .05; 
private float fractionLength2 = .05; 
private float fractionLength3 = .05;
private int smallestBranch = 5;//10; 
int numDrops=20;
rain[]drops=new rain[numDrops];
public void setup() {      
  size(900,900);
  for (int i = 0; i < drops.length; i++) {

    drops[i] = new rain();
    ///r1 = new rain();
  }
} 
public void draw() {   
  background(0);
  fill(#502F11);
  rect(0,880,900,20);
  stroke(#000EFF);
  for (int i = 0; i < drops.length; i++) 
  {
    drops[i].fall();
  }
  stroke(#FF2B05);
  drawBranches3(450,height,140,90);  
  if(frameCount%60==0 && fractionLength3<=0.75)
  {
    fractionLength3+=0.05;
  }
  stroke(0,255,0);      
  drawBranches(750,height,140,90); 
  if(frameCount%30==0 && fractionLength<=0.75)
  {
    fractionLength+=0.05;
  }
  stroke(#05FFF0);
  drawBranches2(150,height,140,90);
  if(frameCount%45==0 && fractionLength2<=0.75)
  {
    fractionLength2+=0.05;
  }
} 
public void drawBranches(float x,float y, float branchLength, float angle) {   
  if(branchLength>smallestBranch)
  {
    float x1 = x + branchLength * cos(radians(angle));
    float y1 = y - branchLength * sin(radians(angle));
    
    line(x,y,x1,y1);
    drawBranches(x1,y1,branchLength * fractionLength,angle+40);
    drawBranches(x1,y1,branchLength * fractionLength,angle-50);
  }
} 
public void drawBranches2(float x,float y, float branchLength, float angle) {   
  if(branchLength>smallestBranch)
  {
    float x1 = x + branchLength * cos(radians(angle));
    float y1 = y - 2*branchLength * sin(radians(angle));
    
    line(x,y,x1,y1);
    drawBranches(x1,y1,branchLength * fractionLength2,angle+40);
    drawBranches(x1,y1,branchLength * fractionLength2,angle-50);
  }
} 
public void drawBranches3(float x,float y, float branchLength, float angle) {   
  if(branchLength>smallestBranch)
  {
    float x1 = x + branchLength * cos(radians(angle));
    float y1 = y - 4*branchLength * sin(radians(angle));
    
    line(x,y,x1,y1);
    drawBranches(x1,y1,branchLength * fractionLength3,angle+40);
    drawBranches(x1,y1,branchLength * fractionLength3,angle-50);
  }
} 
