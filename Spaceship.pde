class Spaceship extends Floater  
{   
    public Spaceship(){
     corners=3;
     xCorners= new int [corners];
     yCorners=new int[corners];
     xCorners[0]=-8;
     yCorners[0]=-8;
     xCorners[1]=16;
     yCorners[1]=0;
     xCorners[2]=-8;
     yCorners[2]=8;
    myCenterX = 250;
    myCenterY = 250;
    myColor = color(255);
    }
    public void setXspeed(double x){
     myXspeed=x; 
    }
    public void setYspeed(double y){
     myYspeed=y; 
    }
}
