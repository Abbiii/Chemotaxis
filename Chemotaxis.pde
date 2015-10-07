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
 		predator[i] = new Penicillin();
 }   

 void draw()   
 {    
 	tint(255,126);//transparent
 	//prey action
 	for (int i = 0; i < 20; i++)
 	{
 		prey[i].
 	}
 	//predator action
 	for (int j = 0; j < 15; j++)
 	{

 	}
  }  

 class Bacteria    
 {     
 	boolean alive;
 	Bacteria()//constructor
 	{
 		alive = true;
 	}
 	void born()
 	{

 	}
 	void show()
 	{

 	}
 }    

 class Penicillin
 {
 	Penicillin()//constructor
 	{

 	}
 	void made()
 	{

 	}
 	void show()
 	{
 		
 	}
 }
