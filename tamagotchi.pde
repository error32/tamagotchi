float bezier;

float noise=0;
float speed= .015;
float intSpeed = 0.5;

float rayon=200;
float rayonProtected = 50;
float side= random(20,70); //gérer le nombre de edge/pics


boolean random=true;
boolean debug=true;
boolean mvt=true;
boolean save=false;//attention va enregistrer une sequence d'image si save = true
float time=0;


float red;
float green;
float blue;


ArrayList<polygon> polygons;


void setup() {
  bezier = rayon * 2 / side;
  size(500, 500);
  frameRate(29);
  smooth();
  polygons = new ArrayList<polygon>();
  polygons.add(new polygon());
  
}

void draw() {
  

  
  
  println(time);
  println(side);
  time++;
  background(255);

  translate(width/2, height/2);  
  if(mvt){
    polygons.get(0).shake().trace();
 
    
 fill(255);
 ellipse(-30,-30,20,15);
 ellipse(20,-30,20,15);
 
 fill(0);
 ellipse(-30,-30,5,5);
 ellipse(20,-30,5,5);
 
 
  
  
  }else{
     polygons.get(0).trace();
  }
  

  
  
  
/*  if(time==100){
      side= 10;
  }
  
 if(time==600){
      side= random(400);
  }
  
   if(time>300){
      side= random(1,200);
  }
  
  
    if(time>400){
      side= random(1,200);
  }
  */
  
  
  if(time==120){

    //polygons.get(0).updatePoint(polygons.get(0).points.size()-1, 500, 80, -PI/12);
    
  }
  if(save){
    saveFrame(); 
  }
}