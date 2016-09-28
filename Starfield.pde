//your code here
Particle[] sweg;



void setup()
{
	size(400, 400);
	sweg = new Particle[100];
	for(int i = 0; i < sweg.length; i ++)
	{
		sweg[i] = new NormalParticle();
	}
	//your code here
}
void draw()
{
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
		myX = 200;
		myY = 200;
		speed = 10;
		angle = 2.5;
	}
	void move ()
	{
		myX += (Math.cos(angle)* speed) + myX;
		myY += (Math.sin(angle)* speed) + myY;
		angle += 50;
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
/*class OddballParticle implements Particle //uses an interface
{
	//your code here
}
*/
class JumboParticle //uses inheritance
{
	//your code here
}

