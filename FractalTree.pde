private double smallestBranch = 0.5; 
double angle1, angle2;

public void setup() 
{   
  size(1000,800);    
  noLoop(); 
} 
public void draw() 
{   
  strokeWeight(1);
  stroke(255);
  background(0);   
   
  line(500,500,500,1000);   
  drawBranches(500,500,100,0);
} 

public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  angle1 = angle + PI/4;
  angle2 = angle - PI/4;
  
  int endX1 = (int)(x + Math.sin(angle1)*branchLength);
  int endY1 = (int)(y - Math.cos(angle1)*branchLength);
  
  int endX2 = (int)(x + Math.sin(angle2)*branchLength);
  int endY2 = (int)(y - Math.cos(angle2)*branchLength);
  
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  
  if (branchLength > smallestBranch){
    drawBranches(endX1,endY1,branchLength/Math.sqrt(3),angle+PI/4);
    drawBranches(endX2,endY2,branchLength/Math.sqrt(3),angle-PI/4);
  }
} 
