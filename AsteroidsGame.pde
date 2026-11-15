//your variable declarations here
Spaceship bob = new Spaceship();
public void setup() 
{
 size(500,500);//your code here
}
public void draw() 
{
  background(0);
bob.show();
  for (int i=0;i<200; i++)
 { Star bill=new Star();
 bill.show();
 }//your code here
 bob.move();
}

public void keyPressed()
{
  if(key=='h')
  {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.myCenterX= (int)(Math.random()*500);
    bob.myCenterY=(int)(Math.random()*500);
  }
 if(key=='e'){
  bob.turn(10); 
 }
 if(key=='w'){
  bob.accelerate(0.1); 
 }
 if(key=='s'){
  bob.accelerate(-0.1); 
 }
}
<footer>
Press w to accelerate<br>
Press s to decelerate<br>
Press h to hyperspace<br>
Press e to turn
</footer>
