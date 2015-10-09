//https://github.com/elliottdebruin/Chemotaxis/blob/gh-pages/Chemotaxis.pde

 Bacteria[] prey;
 Penicillin[] predator;

 void setup()   
 {     
 	background(0);  
 	size(500,500);
 	//Bacteria prey array
 	prey = new Bacteria[20];
 	for (int i = 0; i < 20; i++)
 		prey[i] = new Bacteria();
 	//Penicillin predator array
 	predator = new Penicillin[15];
 	for (int j = 0; j < 15; j++)
 		predator[j] = new Penicillin();
 }   

 void draw()   
 {    
 	background(0);
 	//prey action
 	for (int i = 0; i < 20; i++)
 	{
 		prey[i].born();
 		prey[i].show();
 	}
 	//predator action
 	for (int j = 0; j < 15; j++)
 	{
 		predator[j].made();
 		predator[j].show();
 	}
  }  

 class Bacteria    
 {  
 	int bX, bY;   
 	boolean alive;
 	Bacteria()//constructor
 	{
 		bX = (int)(Math.random() * 200 + 150);
 		bY = (int)(Math.random() * 200 + 150);
 		alive = true;
 	}
 	void born()
 	{
 		//random run
 		bX = bX + (int)(Math.random() * 5) - 2;
        bY = bY + (int)(Math.random() * 5) - 2;

 	}
 	void show()
 	{
 		if (get(bX +5, bY + 5) == color(255,0,0))
 			{
 				alive = false;
 			}
 		else if (keyPressed)
 		{
 			if (key == 'N'||key == 'n')
 			{
 				alive = true;
 			}
 		}

 		if (alive == false)
 		{}
 		else 
 		{
 			fill(153, 255-(int)(Math.random() *200), 255-(int)(Math.random()*150));
 			ellipse(bX, bY, 7, 7);
 		}
 	}
 }    

 class Penicillin
 {
 	int pX, pY;
 	Penicillin()//constructor
 	{
 		pX = 250;
 		pY = 250;
 	}
 	void made()
 	{
		if (mouseX < pX) 
             pX = pX + (int)(Math.random() * 5) - 3;
        else 
             pX = pX + (int)(Math.random() * 5) - 1;
        if (mouseY < pY)
             pY = pY + (int)(Math.random() * 5) - 3;
        else
             pY = pY + (int)(Math.random() * 5) - 1;
 	}
 	void show()
 	{
 		fill(255,0,0);
 		ellipse(pX, pY, 10,10);
 	}
 }
