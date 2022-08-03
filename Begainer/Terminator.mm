#define in1 6
#define in2 5
#define in3 11
#define in4 10
#define ENA 5
#define ENB 6
#define maxspeed 255
char command;
int pwm=255;
int spd=150;
 
void setup() {
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  pinMode(in3, OUTPUT);
  pinMode(in4, OUTPUT);
  pinMode(ENA, OUTPUT);
  pinMode(ENB, OUTPUT);
  Serial.begin(9600);
  }
 
void loop() {
    if (Serial.available() > 0) {
    command = Serial.read();
   
    Serial.println(command);
   
   
   
    if(command=='L')
    {
     motor(spd,spd);
      command = Serial.read();
    }
    else if(command=='R')
    {
      motor(-spd,-spd);
    }
    else if(command=='B')
    {
      motor(-spd,spd);
    }
    else if(command=='F')
    {
      motor(spd,-spd);
    }
    else if(command=='S')
    {
      digitalWrite(in1,0);
      digitalWrite(in2,0);
      digitalWrite(in3,0);
      digitalWrite(in4,0);
    }
 
    else if(command=='1') pwm=25;
    else if(command=='2') pwm=50;
    else if(command=='3') pwm=75;
    else if(command=='4') pwm=100;
    else if(command=='5') pwm=125;
    else if(command=='6') pwm=150;
    else if(command=='7') pwm=175;
    else if(command=='8') pwm=200;
    else if(command=='9') pwm=225;
    else if(command=='q') pwm=255;
    spd=pwm;
   
  }
}
 
 
void motor(int leftmotor, int rightmotor)
{
 
  if (leftmotor > maxspeed)
    leftmotor = maxspeed;
  if (leftmotor < -maxspeed)
    leftmotor = -maxspeed;
  if (rightmotor > maxspeed)
    rightmotor = maxspeed;
  if (rightmotor < -maxspeed)
    rightmotor = -maxspeed;
  //=======================================================================================================================
  int a = 0, b = 0, c = 0, d = 0;
  if (leftmotor < 0)
  {
    c = leftmotor * -1;
  }
  else
  {
    d = leftmotor;
  }
  if (rightmotor < 0)
  {
    a = rightmotor * -1;
  }
  else
  {
    b = rightmotor;
  }
  analogWrite(in1, a);
  analogWrite(in2, b);
  analogWrite(in3, c);
  analogWrite(in4, d);
 
 
}