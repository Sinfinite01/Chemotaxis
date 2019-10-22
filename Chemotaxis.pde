 //declare bacteria variables here   
Bacteria[] xenomorph;

 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500);
 	xenomorph = new Bacteria[500];
 for(int i=0; i<xenomorph.length; i++)
  {
    xenomorph[i] = new Bacteria(((int)(Math.random()*50)+1)*10,((int)(Math.random()*50)+1)*10);
  }
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	for(int i=0; i<xenomorph.length; i++)
  {
 	xenomorph[i].move();
 	xenomorph[i].show();
  }


 }  
 class Bacteria    
 {     
 	//lots of java!   
 	double bactX;
 	double bactY;
 	double checkX;
 	double checkY;
 	double moveSpeedX;
 	double moveSpeedY;
 	int bactColor;
 	int randX;
 	int randY;
 	Bacteria(double x, double y) //constructor
 	{
 		bactX=checkX=x;
 		bactY=checkY=y;
 		moveSpeedX=moveSpeedY=1;
 		randX=(int)(Math.random()*2);
 		if(randX==0){moveSpeedX*=-1;}
 		randY=(int)(Math.random()*2);
 		if(randY==0){moveSpeedY*=-1;}


 	}
 	void move()
 	{
 		if(checkX-bactX>15 || bactX-checkX>15)
 		{
 			randX=(int)(Math.random()*2);
 			if(randX==0){moveSpeedX*=-1;}
 			checkX=bactX;

 		}
 		if(checkY-bactY>15 || bactY-checkY>15)
 		{
 			randY=(int)(Math.random()*2);
 			if(randY==0){moveSpeedY*=-1;}
 			checkY=bactY;
 		}
 		bactX+=(float)moveSpeedX;
 		bactY+=(float)moveSpeedY;
 	}
 	void show()
 	{
 		ellipse((float)bactX,(float)bactY,(float)10,(float)10);

 	}
 }    