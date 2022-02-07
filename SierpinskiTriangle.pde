public void setup()
{
  size(400,400);
  background(255);
  //fill((int)Math.random(), (int)Math.random(), (int)Math.random());
}
public void draw()
{
  sierpinski(0, 400, 400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  fill(208, 180,225);
  noStroke();
 if(len <= 20)
 
   triangle(x, y, x+len/2, y-len, x+len, y);
  else{
   sierpinski(x, y, len/2);
   sierpinski(x+len/2, y, len/2);
   sierpinski(x+len/4, y-len/2, len/2);
  }
  
}
