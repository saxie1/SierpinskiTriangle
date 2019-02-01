public void setup()
{
  size(300,300);
}
public void draw()
{
  background(0);
  sierpinski(0,300,300);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len<=30)
    triangle(x,y,x+len,y,x+len/2,y-len);
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+(len/2),y,len/2);
    sierpinski(x+(len/4),y-(len/2),len/2);
  }
}
