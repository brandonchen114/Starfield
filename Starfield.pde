//your code here
NormalParticle[] sweg;



void setup()
{
	size(400, 400);
	sweg = new NormalParticle[300];
	for(int i = 0; i < sweg.length; i ++)
	{
		sweg[i] = new NormalParticle(100, 100);
	}
	//your code here
}
void draw()
{
	for(int i = 0; i < sweg.length; i++)
	{
		sweg[i].move();
		sweg[i].show();
	}
	//your code here
}
class NormalParticle
{
	int colour;
	double myX, myY, speed, angle;
	NormalParticle(double x, double y)
	{
		myX = x;
		myY = y;
		speed = 10;
		angle = 10;
	}
	void move ()
	{
		myX += (Math.cos(angle)* speed) + myX;
		myY += (Math.sin(angle)* speed) + myY;
	}
	void show ()
	{
		fill(colour);
		ellipse((float)myX, (float)myY, 5, 5);
	}
	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

