size(500,500);
background(#FFFFF2);
for(int y=50; y<500; y+=50)
{
   line(0, y, 500, y);
}
for(int x=50; x<500; x+=50)
{
  line(x, 0,   x, 500);
}
