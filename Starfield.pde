//your code here
Particle[] sweg = new Particle[100];


void setup()
{
	size(400, 400);
	sweg = new Particle[100];
	for(int i = 0; i < sweg.length; i ++)
	{
		sweg[i] = new NormalParticle();
		sweg[0] = new OddballParticle();
		sweg[1] = new JumboParticle();
	}
	//your code here
}
void draw()
{
	background(255);
	for(int i = 0; i < sweg.length; i++)
	{
		sweg[i].show();
		sweg[i].move();
	}
	//your code here
}
class NormalParticle implements Particle
{
	int colour;
	double myX, myY, speed, angle;
	NormalParticle()
	{
		myX = 200.7;
		myY = 200.9;
		speed = 10.4;
		angle = (double)(Math.random()*360);
	}
	void move ()
	{
		myX += (Math.cos(angle)* speed);
		myY += (Math.sin(angle)* speed);
		angle += 0.2;
	}
	void show ()
	{
		fill(colour);
		ellipse((float)myX, (float)myY, 10, 10);
	}
	//your code here
}
interface Particle
{
	public void move();
		
	public void show();
	//your code here
}
class OddballParticle implements Particle //uses an interface
{
	int colour;
	double myX, myY, speed, angle;
	OddballParticle()
	{
		colour = 137;
		myX = 120.7;
		myY = 305.9;
		speed = 10.4;
		angle = (double)(Math.random()*360);
	}
	void move ()
	{
		myX += (Math.cos(angle)* speed);
		myY += (Math.sin(angle)* speed);
		angle += 0.2;
	}
	void show ()
	{
		fill(colour, 23, colour-47);
		ellipse((float)myX, (float)myY, 10, 10);
	}

	//your code here
}

class JumboParticle extends NormalParticle //uses inheritance
{
	void show()
	{
		fill(0);
		ellipse((float)myX, (float)myY, 30, 30);

	}
	//your code here
}

