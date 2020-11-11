//Variables
//class setup
Tail tail;

void setup(){
size(400,400);
//Create obecjt
tail = new Tail();
//calling init function
tail.initarray();
}

void draw(){
background(#2A60F2,255);
//displaying object
tail.move();
tail.display();
}
