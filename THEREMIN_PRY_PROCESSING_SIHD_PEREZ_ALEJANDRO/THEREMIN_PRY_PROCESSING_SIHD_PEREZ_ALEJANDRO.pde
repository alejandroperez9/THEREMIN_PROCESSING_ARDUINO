import processing.serial.*;
Serial puerto;

PImage DO;
PImage RE;
PImage MI;
PImage FA;
PImage SOL;
PImage LA;
PImage SI;

int a = 2;
int b = 3;
int c = 4;
int d = 5;
int e = 6;
int f = 7;
int g = 8;
int h = 9;
int i = 10;
int j = 11;
int k = 12;
int l = 13;
int m = 14;
int n = 15;
int o = 16;
int p = 17;
int q = 18;
int r = 19;

String DO1 = str(a);
String DO2 = str(b);
String RE1 = str(c);
String RE2 = str(d);
String MI1 = str(e);
String MI2 = str(f);
String MI3 = str(g);
String MI4 = str(h);
String FA1 = str(i);
String FA2 = str(j);
String SOL1 = str(k);
String SOL2 = str(l);
String SOL3 = str(m);
String LA1 = str(n);
String LA2 = str(o);
String SI1 = str(p);
String SI2 = str(q);
String SI3 = str(r);

void setup(){
  size(400, 400);
  puerto = new Serial(this, "COM3", 9600);
  background(0);
  imagenes();
}

void imagenes(){
  DO = loadImage("do.jpg");
  RE = loadImage("re.jpg");
  MI = loadImage("mi.jpg");
  FA = loadImage("fa.jpg");
  SOL = loadImage("sol.jpg");
  LA = loadImage("la.jpg");
  SI = loadImage("si.jpg");
}

void draw(){
  String datos = puerto.readStringUntil('\n');
  if (datos.equals( "0") == true){
    background(255);
  }
  if (datos.equals("DO1") == true){
    image(DO, CENTER, CENTER);
  }else{
    if (datos.equals("DO2") == true){
      image(DO, CENTER, CENTER);
    }else{
      if (datos.equals("RE1") == true){
        image(RE, CENTER, CENTER);
      }else{
        if (datos.equals("RE2") == true){
          image(RE, CENTER, CENTER);
        }else{
          if(datos.equals("MI1") == true){
            image(MI, CENTER, CENTER);
          }else{
            if (datos.equals("MI2") == true){
              image(MI, CENTER, CENTER);
            }else{
              if (datos.equals("MI3") == true){
                image(MI, CENTER, CENTER);
              }else{
                if (datos.equals("MI4") == true){
                  image(MI, CENTER, CENTER);
                }else{
                  if (datos.equals("FA1") == true){
                    image(FA, CENTER, CENTER);
                  }else{
                    if (datos.equals("FA2") == true){
                      image(FA, CENTER, CENTER);
                    }else{
                      if (datos.equals("SOL1") == true){
                        image(SOL, CENTER, CENTER);
                      }else{
                        if (datos.equals("SOL2") == true){
                          image(SOL, CENTER, CENTER);
                        }else{
                          if (datos.equals("SOL3") == true){
                            image(SOL, CENTER, CENTER);
                          }else{
                            if (datos.equals("LA1") == true){
                              image(LA, CENTER, CENTER);
                            }else{
                              if (datos.equals("LA2") == true){
                                image(LA, CENTER, CENTER);
                              }else{
                                if (datos.equals("SI1") == true){
                                  image(SI, CENTER, CENTER);
                                }else{
                                  if (datos.equals("SI2") == true){
                                    image(SI, CENTER, CENTER);
                                  }else{
                                    if (datos.equals("SI3") == true){
                                      image(SI, CENTER, CENTER);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
