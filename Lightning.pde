int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;
void setup()
{
  size(500,500);
  strokeWeight(5);
  background(255,255,255);
}
void draw()
{
	stroke((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
	while (endY < 500){
		endX = startX + ((int)(Math.random()*18)-9);
		endY = startY + (int)(Math.random()*9);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	startX = 250;
	startY = 0;
	endX = 250;
	endY = 0;
}

