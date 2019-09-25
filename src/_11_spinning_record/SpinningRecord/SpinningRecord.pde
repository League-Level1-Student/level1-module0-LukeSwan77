  import ddf.minim.*;  
  AudioPlayer song;
  Minim minim;
  PImage pictureOfRecord; 
  int angle = 0;
void setup(){
size(750,600);   
pictureOfRecord= loadImage("record.jpg");    
pictureOfRecord.resize(750,600);
minim = new Minim(this);
song = minim.loadFile("7nationArmy.mp3", 512);

}
void draw(){
  rotateImage(pictureOfRecord, angle);
  image(pictureOfRecord, 0, 0); 
  if(mousePressed){
  angle++;
  song.play();
  } else {
   song.pause(); 
  }
  
}
void rotateImage(PImage image, int amountToRotate) {
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/360);
     translate(-image.width/2, -image.height/2);
}
