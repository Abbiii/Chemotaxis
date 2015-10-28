 Bacteria[] prey;
 int bNum = 20;
 int fx, fy;

 void setup() 
 {
     size(500, 500);
     // Bacteria prey array
     prey = new Bacteria[bNum];
     for (int i = 0; i < prey.length; i++) 
     {
         prey[i] = new Bacteria();
     }
 }


 void draw() 
 {
     background(0);
     food();
     for (int i = 0; i < prey.length; i++) 
     {
        prey[i].born();
        prey[i].show();
     }
 }

void food()
{
	if (mousePressed == true)
	{
		fx = mouseX;
		fy = mouseY;
		fill(255);
		rect(fx, fy, 10, 10);
	}
	if (mousePressed == false) 
	{
		fill(255);
		rect(fx, fy, 10, 10);
	}
}

 class Bacteria 
 {
     int bX, bY;
     Bacteria() 
     {
         bX = (int)(Math.random() * 200 + 150);
         bY = (int)(Math.random() * 200 + 150);
     }
     void born() 
     {
        if (fx < bX) 
             bX = bX + (int)(Math.random() * 5) - 3;
        else 
             bX = bX + (int)(Math.random() * 5) - 1;
        if (fy < bY)
             bY = bY + (int)(Math.random() * 5) - 3;
        else
             bY = bY + (int)(Math.random() * 5) - 1;
     }
     void show()
     {
         noStroke();
         fill((int)(Math.random() * 255), 153, (int)(Math.random() * 255));
         ellipse(bX, bY, 5, 5);

     }
 }
 
 //originally want to make into pac man.... might come back and improve later
