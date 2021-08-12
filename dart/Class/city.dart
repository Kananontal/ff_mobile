import 'Country.dart';
import 'problem.dart';

class City extends Country with Problem{

  var city;

  City(this.city) : super("Switzerland","English");

 void callSuper(){
   super.showPeople();
 }
@override
 void showPeople(){
   print("People $city : 30");
 }
}