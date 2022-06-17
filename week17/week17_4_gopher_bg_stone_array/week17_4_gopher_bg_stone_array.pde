PImage img1,img2,img3,img4,gopher,soil,bg,stone;
void setup()
{
   size(640,480);
   bg =loadImage("bg.jpg");
   stone = loadImage("stone1.png");
   soil=loadImage("soil8x24.png");
   img1=loadImage("groundhogIdle.png");
   img2=loadImage("groundhogDown.png");
   img3=loadImage("groundhogLeft.png");
   img4=loadImage("groundhogRight.png");
   gopher = img1;
}
int [][] a = {
  {1, 0, 0, 0, 0, 0, 0, 0},
  {0, 1, 0, 0, 0, 0, 0, 0},
  {0, 0, 1, 0, 0, 0, 0, 0},
  {0, 0, 0, 1, 0, 0, 0, 0},
  {0, 0, 0, 0, 1, 0, 0, 0},
  {0, 0, 0, 0, 0, 1, 0, 0},
  {0, 0, 0, 0, 0, 0, 1, 0},
  {0, 0, 0, 0, 0, 0, 0, 1},
};
int x=300, y=0,vx=0, vy=0;
void draw()
{
  image(bg, 0, 0);
  image(soil, 0, 160-y);
  for(int i=0;i<8;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(a[i][j]==1)image(stone, j*80, i*80+160-y);
    }
  }
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
