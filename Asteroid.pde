class Asteroid extends Floater{
  public Asteroid() {
    corners=6;
    xCorners = new int[corners];
    yCorners= new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
        myCenterX = Math.random() * 500;
    myCenterY = Math.random() * 500;
    myColor = color(150);
    myXspeed = Math.random() * 2 - 1;
    myYspeed = Math.random() * 2 - 1;
    myPointDirection = Math.random() * 360;
    turnSpeed = Math.random() * 4 - 2;
  }
  private double turnSpeed;
  public void move()
  {
    turn(turnSpeed);
    super.move();
  }
  public double getCenterX()
  {
    return myCenterX;
  }
  public double getCenterY()
  {
    return myCenterY;
  }
}
