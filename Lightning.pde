int startX = mouseX;
int startY = mouseY;
int endX = 255;
int endY = 0;

void setup()
{
  size(510,510);
  strokeWeight(5);
  background(255,255,255);
}
void draw()
{
	//stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	fill(255,255,255);
	rect(0,0,510,510);
	ellipse(mouseX,mouseY,9,9);
	stroke(mouseX,mouseX-mouseY,mouseY);
	while (endY < 510){
		endX = startX + ((int)(Math.random()*20)-10);
		endY = startY + (int)(Math.random()*10);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}	
}
void mouseMoved()
{
	noCursor();
	startX = mouseX;
	startY = mouseY;
	endX = 255;
	endY = 0;
}
