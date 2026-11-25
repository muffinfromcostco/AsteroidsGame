Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
public void setup() 
{
 size(500,500);
 for(int i=0; i<nightSky.length;i++)
 {
  nightSky[i]=new Star(); 
 }
 for(int i = 0; i < 5; i++)
{
    asteroids.add(new Asteroid());
}
}
public void draw() 
{
  background(0);
bob.show();
 bob.move();
 for (int i=0; i <nightSky.length;i++)
 {
  nightSky[i].show(); 
 }
 for(int i = 0; i < asteroids.size(); i++)
{
    if(dist((float)bob.myCenterX, (float)bob.myCenterY,
            (float)asteroids.get(i).getCenterX(),
            (float)asteroids.get(i).getCenterY()) < 20)
    {
        asteroids.remove(i);
        i--;
    }
    else
    {
        asteroids.get(i).show();
        asteroids.get(i).move();
    }
}
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
