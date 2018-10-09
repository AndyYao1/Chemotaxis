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
	 frameRate(100);
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
 	int myX,myY,myColor1,myColor2,myColor3;
 	Bacteria()
 	{
 		myX= 500;
 		myY= 500;
 		myColor1 = (246);
 		myColor2 = (255);
 		myColor3 = (0);
 	}
 	void show()
 	{
 		fill(myColor1,myColor2,myColor3);
 		ellipse(myX, myY, 100,100);
 		fill(0);
 		ellipse(myX-20, myY-20, 20,20);
 		ellipse(myX+20, myY-20, 20,20);
 		arc(myX+1, myY+1, 30, 20, 0, PI);
 	}	   
 	void move()
 	{	
 		if (mouseX>myX) {
 			myX= myX+(int)(Math.random()*40)-1;
 		} else {
 			myX= myX+(int)(Math.random()*40)-40;
 		}
 		if (mouseY>myY) {
 			myY= myY+(int)(Math.random()*40)-1;
 		} else {
 			myY= myY+(int)(Math.random()*40)-40;
 		}
 	}
 }