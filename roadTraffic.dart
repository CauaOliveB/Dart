import "dart:io";

void main() {
  print("""Hello, good morning!
  Please, insert the name of the driver:
  """);

  String? driverName = stdin.readLineSync();

  print("Please, insert the velocity of the driver:");
  int velocity = int.parse(stdin.readLineSync()!);

  int penaltyValue = 100;

  if (velocity == 60) {
    print("$driverName, you not commited any infraction");
  } else if (velocity == 61 && velocity <= 80) {
    print("$driverName, you committed a minor infraction");
  } else if (velocity == 81 && velocity <= 100) {
    print("$driverName, you commited a medium infraction");
  } else {
    velocity > 100;
    print("$driverName, you commited a serious infraction");
  }

  print("""Choose you option of payment:
    [1] Cash Payment - (10% discounts)
    [2] Pay in two installments - (without interest)
    [3] Pay in three installments - (10% interest)
  """);

  int paymentMethod = int.parse(stdin.readLineSync()!);

  switch (paymentMethod) {
    case 1:
      double payment1 = penaltyValue * 0.10;
      double x1 = penaltyValue - payment1;
      print("$driverName, the value that you have to pay is $x1");
      break;
    case 2:
      double payment2 = penaltyValue / ~2;
      double x2 = payment2;
      print(
        "$driverName, the value that you have to pay is two installments of $x2",
      );
      break;
    case 3:
      double payment3 = penaltyValue + (penaltyValue * 0.10);
      double installments = payment3/ 3;
      double x3 = payment3;
      print(
        "$driverName, the value that you have to pay is ${x3.toStringAsFixed(2)}  ${installments.toStringAsFixed(2)}",
      );
      break;
    default:
      print("Invalid Option");
  }
}
