import 'dart:async';
import 'dart:io';
import 'dart:math';

class Calculator{
  //Addition
  double add(double a, double b) => a + b;

  //Subtraction
  double subtract(double a, double b) => a - b;

  //Multiplication
  double multiply(double a, double b) => a * b;

  //Division
  double divide(double a, double b){
    if(b == 0){
      throw Exception('Division by zero is not allowed');
    }
    return a / b;

    }
  double remainder(double a, double b) => a % b;
  double exponent(double a, double b)=> pow(a, b).toDouble();
  }
  void main() async{
    Calculator calc = Calculator();
    bool continueCalculation = true;

    while (continueCalculation){
      try {
        stdout.write('Enter first number: ');
        double num1 = double.parse(stdin.readLineSync()!);
        stdout.write('Enter second number:');
        double num2 = double.parse(stdin.readLineSync()!);
        stdout.write('Enter operator (+, -, *, /, %, ^): ');
        String operator = stdin.readLineSync()!;

        double result;

        switch (operator){
          case '+':
            result = calc.add(num1,num2);
            break;
            case '-':
            result = calc.subtract(num1, num2);
            break;
            case '*':
            result = calc.multiply(num1, num2);
            break;
            case '/':
            result = calc.divide(num1, num2);
            break;
            case '%':
            result = calc.remainder(num1, num2);
            break;
            case '^':
            result = calc.exponent(num1, num2);
            break;
            default:
            throw Exception('Invalid Operator! ');

        }
            print('Calculating result...');
            await Future.delayed(Duration(seconds: 5));
            print('Result: $result');
      }     catch(e){
            print('Error: #{e.tostring()}');  
    }  
            stdout.write('Do you want to perform another calculation? (yes/no):');
            String response = stdin.readLineSync()!.toLowerCase();
            continueCalculation = response == 'yes';
          while(!continueCalculation){
            break;  
          }
    }
    print('Goodbye!');
  }

