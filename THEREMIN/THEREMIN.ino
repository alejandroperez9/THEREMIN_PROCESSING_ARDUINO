int TRIG = 10; // Pin de disparo al sensor Hc-sr04 Ultrasonido Sensor Distancia
int ECO = 9; // Pin de respuesta del sensor
int LED = 3; // Indicador de distancia
int DURACION;
int DISTANCIA;

void setup() {
  pinMode (TRIG, OUTPUT);
  pinMode (ECO, INPUT);
  pinMode (LED, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  digitalWrite(TRIG, HIGH);
  delay(1);
  digitalWrite(TRIG, LOW);
  DURACION = pulseIn(ECO, HIGH);
  DISTANCIA = DURACION / 58.2; //Constante especificada por el fabricane del sensor
  Serial.println(DISTANCIA);
  delay(1000);

  if (DISTANCIA <= 10 && DISTANCIA >= 2) { //Con cero no funciona bien
    digitalWrite(LED, HIGH);
    delay(DISTANCIA * 5);
    digitalWrite(LED, LOW);
  }
}
