PImage img1,img2,img3,img4,gopher,soil;
void setup()
{
   size(640,480);
   soil=loadImage("soil8x24.png");
   img1=loadImage("groundhogIdle.png");
   img2=loadImage("groundhogDown.png");
   img3=loadImage("groundhogLeft.png");
   img4=loadImage("groundhogRight.png");
   gopher = img1;
}
int x=300, y=0,vx=0, vy=0;
void draw()
{
  image(soil, 0, 160-y);
  image(gopher, x, 80);
  x += vx; y += vy;
}
void keyPressed()
{
  if(keyCode==LEFT){vx=-1; vy=0; gopher = img3;}
  if(keyCode==RIGHT){vx=+1; vy=0; gopher = img4;}
  if(keyCode==DOWN){vx=0; vy=1; gopher = img2;}
}
void keyReleased()
{
  vx=0; vy=0; gopher=img1;
}
