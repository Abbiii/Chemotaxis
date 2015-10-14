//https://github.com/elliottdebruin/Chemotaxis/blob/gh-pages/Chemotaxis.pde

 Bacteria[] prey;
 Penicillin[] predator;
 int bNum = 20; 
 int pNum = 10;


 void setup()   
 {     
 	size(500,500);
 	//Bacteria prey array
 	prey = new Bacteria[bNum];
 	for (int i = 0; i < prey.length; i++)
 	{
 		prey[i] = new Bacteria();
 	}
 	//Penicillin predator array
 	predator = new Penicillin[pNum];
 	for (int j = 0; j < predator.length; j++)
 	{
 		predator[j] = new Penicillin();
 	}
 }   

 void draw()   
 {    
 	background(0);
 	//prey action
 	for (int i = 0; i < prey.length; i++)
 	{
 		prey[i].born();
 		prey[i].show();
 	}
 	//predator action
 	for (int j = 0; j < predator.length; j++)
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
 		noStroke();
 		if (alive == true) 
 		{
            fill(153, 255-(int)(Math.random() *200), 255-(int)(Math.random()*150));
            ellipse(bX, bY, 4, 4);
        }
        if (get(bX + 2, bY + 2) == color(255,0,0)) 
        {
         	alive = false;
         	bNum--;
        } 
        else if (keyPressed)
 		{
 			if (key == 'N'||key == 'n')
 			{
 				bNum +=20;
 			}
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
 		ellipse(pX, pY, 8, 8);
 	}
 }
