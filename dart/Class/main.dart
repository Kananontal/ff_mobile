import 'Country.dart';
import 'city.dart';

void main() {
  City item = City("Bern");
  print(item.city);
  print(item.color);
  print(item.name);
  print(item.language);

  item.callSuper();
  item.showPeople();
  item.showProblem();
}

/*  var item = new Country.language("Switzerland","Swit");

  print("ประเทศ : " + item.name);
  print("ภาษาหลัก :" + item.showLanguage());

  item.setAnimal("Cow");
  print("สัตว์ประจำชาติ :" + item.getAnimal());
  
  print("เมืองหลวง :" + Country.city);*/