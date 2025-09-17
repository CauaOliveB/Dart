
class Car{
  String brand = "";
  String model = "";
  String color = "";
  int speed = 0;

  Car(this.brand,this.model,this.color,this.speed);


void accelerate() {
  speed += 10;
}
}

void main(){
  Car Fiat147 = Car("Fiat","Fiat147","Blue",0);
  Fiat147.accelerate(); //Chama o método, altera a velocidade
  Fiat147.accelerate();
  Fiat147.accelerate();
  Fiat147.accelerate();
  print(Fiat147.color);
}