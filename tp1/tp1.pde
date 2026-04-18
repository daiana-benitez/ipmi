PImage cuadro;
int D;
void setup(){
  size(800,400);
  cuadro=loadImage ("3cubis8.jpg");
translate(0,400);
 background(255);
 smooth();

  image(cuadro,0,0,400,400);
 
  image(cuadro,400,0,400,0);
  
}
   
void draw(){
D=400;
  //fondo 1
   image(cuadro,0,0,400,400);
   fill(#2E3B55);
    
  rect(400,4,390,380);
 //fondo2
 noStroke();
 fill(#081B40);
 
 rect(410,14,370,352);
 //quad
 fill(#A5A48E);
 quad(30+D,35,161+D,10,200+D,372,30+D,350);
fill(#A5A48E);
quad(161+D,11,364+D,29,369+D,348,199+D,373);

 beginShape();
fill (#122B5F);
 vertex(162+D,35);
 vertex(113+D,51);
vertex(87+D,68);
 vertex(71+D,85);
 vertex(58+D,107);
 vertex(54+D,130);
vertex(62+D,161);
vertex(99+D,214);
 vertex(97+D,210);
 vertex(100+D,221);
 vertex(95+D,233);
 vertex(98+D,226);
vertex(99+D,229);
vertex(84+D,246);
vertex(79+D,265);
vertex(89+D,280);

//

vertex(200+D,365);

vertex(275+D,319);
vertex(303+D,302);
vertex(318+D,276);
vertex(305+D,259);
vertex(289+D,243);
// help
vertex(296+D,229);
vertex(337+D,186);
vertex(345+D,152);
vertex(334+D,107);
vertex(308+D,60);
vertex(163+D,33);
 
endShape(CLOSE);

//

 beginShape();
 fill(#00287C);

vertex(164+D,34);
vertex(152+D,41);
vertex(100+D,105);
vertex(162+D,91);

vertex(163+D,35);



 endShape(CLOSE);

beginShape();
fill(#5371B2);
vertex(146+D,40);
vertex(95+D,61);
vertex(63+D,93);
vertex(55+D,119);
vertex(55+D,143);
vertex(69+D,175);
vertex(95+D,209);
vertex(79+D,265);

endShape();
beginShape();
vertex(109+D,198);
vertex(130+D,211);
vertex(137+D,228);
vertex(130+D,253);
vertex(122+D,270);
vertex(118+D,274);
vertex(118+D,307);
vertex(85+D,276);
vertex(79+D,259);
vertex(89+D,239);
vertex(99+D,225);
vertex(97+D,213);
endShape();
beginShape();

vertex(108+D,167);
vertex(79+D,189);
vertex(98+D,214);
vertex(111+D,197);
endShape();
beginShape();
fill(#E2DCE5);
vertex(308+D,60);
vertex(101+D,101);
vertex(108+D,199);
vertex(141+D,201);
vertex(153+D,285);
vertex(118+D,285);
vertex(119+D,307);
vertex(155+D,307);
vertex(202+D,310);
vertex(199+D,343);
vertex(269+D,339);
endShape();
fill(#6A9324);
 ellipse(200+D,133,152,90);
 beginShape();
 vertex(264+D,151);
 vertex(249+D,173);
 vertex(224+D,207);
 vertex(211+D,236);
 vertex(211+D,258);
 vertex(214+D,274);
 //
 
 vertex(227+D,296);
 vertex(242+D,316);
 vertex(221+D,327);
 vertex(200+D,331);
 vertex(169+D,325);
 vertex(155+D,309);
 vertex(191+D,235);
 vertex(185+D,219);
 vertex(181+D,209);
 vertex(173+D,195);
 vertex(154+D,177);
 vertex(140+D,151);
 
 endShape();
 noStroke();
 fill(#122B5F);
 quad(285+D,229,245+D,225,235+D,259,279+D,267);
 fill(#6D4C7C);
 ellipse(200+D,130,120,70);
 fill(#451E50);
 quad(199+D,113,169+D,132,198+D,151,229+D,130);
 fill(#25625C);
quad (199+D,123,185+D,131,197+D,142,211+D,132);
fill(#959595);
quad(200+D,292,174+D,311,201+D,322,218+D,312);
 
 fill(#4981AD);
 triangle(197+D,297,181+D,311,212+D,313);
 fill(0);
beginShape();
vertex(165+D,169);
vertex(180+D,179);
vertex(200+D,183);
vertex(221+D,177);
vertex(231+D,168);
vertex(201+D,179);
endShape();


}
void mousePressed() {
  println("X",mouseX, "Y",mouseY);
}


     
