int sensorPin = A0;   // select the analog input pin for the photoresistor
int led = 13;
long t = 0;

void setup() {
  pinMode(led,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  int LDR_Value=analogRead(sensorPin);
  //Serial.print("LDR_Value,voltage");
  float voltage = (LDR_Value/1024.0)*2.5;
  Serial.println( (String) "Time,LDR_Value,value: "+ (long)t + "," + (int)LDR_Value +(String)","+(float)voltage);
  
  digitalWrite(led,HIGH);
  delay(1000);
  t=t+1;
}
