 //declare bacteria variables here   
 Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(1000, 1000);
 	colony = new Bacteria[100];
 	 for (int i = 0; i < colony.length; i++) {
  	 	colony[i] = new Bacteria();
	 }
 }   

 void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	for (int i = 0; i < colony.length; i++) {
 		colony[i].move();
 		colony[i].show();
 	}
	 
}  

 class Bacteria    
 {     
 	//lots of java!
 	int myX,myY,myColor;
 	Bacteria()
 	{
 		myX= 500;
 		myY= 500;
 		myColor = color(random(0,255),random(0,255), random(0,255));
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX, myY, 20,20);
 	}	   
 	void move()
 	{	
 		if (mouseX>myX) {
 			myX= myX+(int)(Math.random()*10)-1;
 		} else {
 			myX= myX+(int)(Math.random()*10)-10;
 		}
 		if (mouseY>myY) {
 			myY= myY+(int)(Math.random()*10)-1;
 		} else {
 			myY= myY+(int)(Math.random()*10)-10;
 		}
 	}
 }