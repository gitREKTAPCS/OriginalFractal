int redColor = (int)(Math.random()*255);
int blueColor = (int)(Math.random()*255);
int greenColor = (int)(Math.random()*255);
int redBack = (int)(Math.random()*255);
int blueBack = (int)(Math.random()*255);
int greenBack = (int)(Math.random()*255);
//color c = (Math.random()*255,Math.random()*255,Math.random()*255);
public void setup()
{
	size(500, 500);
	
	
	}
public void draw()
{
	background(redBack,greenBack,blueBack);
	fill(redColor,greenColor,blueColor);
	myFractal(250,250,300,150,5);
}

public void mousePressed(){
	redColor = (int)(Math.random()*255);
 	blueColor = (int)(Math.random()*255);
 	greenColor = (int)(Math.random()*255);
 	redBack = (int)(Math.random()*255);
 	blueBack = (int)(Math.random()*255);
 	greenBack = (int)(Math.random()*255);
}

public void myFractal(float x, float y, float radius1, float radius2, int npoints) 
{
	
	star(x,y,radius1,radius2,npoints);
	if(radius1 > 10){
		pushMatrix();
  		translate(x-radius1/2,y);
  		myFractal(0,0,radius1/2,radius2/2,npoints);
  		popMatrix();

        pushMatrix();
  		translate(x+radius1/2,y);
  		myFractal(0,0,radius1/2,radius2/2,npoints);
  		popMatrix();
}
	
}

public void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}