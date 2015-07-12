/* Sensor de Luminosidade
  
  O circuito de luminosidade lê a entrada analógica e de acordo
  com o constante de ajuste, aciona ou libera a saida digital que 
  está ligada no shield de relé  
  
  Detalhes da construção em 
  
   http://blogautomacaolivre.blogspot.com
   
   created 12/12/2011
   por Sergio Mokshin
  
   This example code is in the public domain.

 */
 
const int shieldRelePin = 13;      // ReléShield conectado na porta 13
const int sensorLDRPin = A0; // Leitura do LDR na porta A0
const int constanteAjuste = 300;  // Constante de ajuste de luminosidade para sensibilidade de disparo do circuito 

void setup() { 
   pinMode(shieldRelePin, LOW);
   Serial.begin(9600);   
}

void loop() {   
  int leituraSensorLDR = 0;
  leituraSensorLDR = analogRead(sensorLDRPin);    
  
  if (leituraSensorLDR >= constanteAjuste) {
    digitalWrite(shieldRelePin, LOW);    
  }
  else
  {
    digitalWrite(shieldRelePin, HIGH);        
  }
  
  Serial.println(leituraSensorLDR); 
  delay(50);   
}
