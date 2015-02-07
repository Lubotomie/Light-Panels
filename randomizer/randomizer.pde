void setup(){
  size(400,400);
  smooth();
  
  launch();
}

void draw(){
  
}

void keyPressed(){
  launch();
}

void launch(){
  background(240);
  line(150,50,250,50);
  line(250,50,350,350);
  line(350,350,50,350);
  line(50,350,150,50);
  
  // centre de rotation : (200,-100)
  
  println();
  for(int i=0;i<10;i++){
    if(i<5) fill(250,255,210);
    else fill(230,250,240);
    boolean nok=true;
    //while(nok){
      float angle=random(2*atan(150.0/450))-atan(150.0/450);
      float radius=random(300)+150;
      //nok=false;
    //}
    pushMatrix();
    translate(200,-100);
    rotate(-angle-PI/2);
    translate(-radius,0);
    rect(-8,-5,16,10);
    popMatrix();
    
    println("LED "+i+" : x="+cos(angle)*radius+" y="+sin(angle)*radius+" alpha="+angle);
  }
}
