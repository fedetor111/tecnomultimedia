void circulos(){
  background(0);
  int contar =0;
  for(int i=0;i<20;i++){
    for(int j=0;i<60;i++){
      float escalaEllipse = map(mouseX, 0, width, 10, 500);
      fill(150,110,190,10);
      ellipse(width/2, height/2, escalaEllipse, escalaEllipse);
      fill(150,110,190,50);
      ellipse (250,250,500-contar,500-contar);
      fill(240,50,110,50);
      ellipse (250,250,500-contar,500-contar);
      contar=contar+10;
      
}
  }
}
