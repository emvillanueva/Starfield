Particles[] joe;
void setup(){
  size(400,400);
  background(0);
  joe = new Particles[300];
  for (int i=0; i<joe.length; i++){
  joe[i] = new Particles();
  joe[0]=  new Oddball();
  
  }
}

void draw(){
  background(0);
  for(int i=0; i<joe.length; i++){
    joe[i].show();
    joe[i].move();
    joe[i].click();
}
}

class Particles
{
  double myX,myY, myColor, mySpeed, myAngle;

  public Particles(){
    myX=200;
    myY=200;
    mySpeed=Math.random()*9+1;
    
    myAngle=Math.random()*6.28;
    myColor=myAngle*Math.random()*10+1;
  }
  
  public void move(){
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }
  
  public void show(){
    fill(((int)myX),(int)myY,(int)myColor);
    ellipse((float)myX,(float)myY,7,7);
  }
  public void click(){
    if(mousePressed){
    myX=mouseX;
    myY=mouseY;}
  } 
}
 class Oddball extends Particles
 {
   public Oddball(){
     myY=200;
     myX=200;
   }
   public void move(){
   myX=mouseX+(int)Math.random()*2;
   myY=mouseY+(int)Math.random()*2;
   }
   
   public void show(){
   fill(mouseX, ((int)Math.random()*200+50),mouseY);
   rect((int)myX,(int)myY,15,15);
   }
  
 }
