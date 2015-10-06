//ref: https://github.com/elliottdebruin/Chemotaxis/blob/gh-pages/Chemotaxis.pde

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
 	predator = new Penicillin[10];
 	for (int j = 0; j < 15; j++)
 		predator[i] = new Penicillin();
 }   

 void draw()   
 {    
 	
 }  

 class Bacteria    
 {     
 	   
 }    

 class Penicillin
 {

 }
