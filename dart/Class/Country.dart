class Country{
  // property
  var name;
  var language;
  // private
  var _animal;
  var color = "แดงขาว";
  static var city ="Bern";
  // Constructor
  Country(this.name,this.language);

// Constructor
 // Country.language(String name , String Language) : this(name , Language);
// method

  String showLanguage() => this.language;

void setAnimal(String animal){
this._animal = animal;
}
String getAnimal() => this._animal;

void showPeople(){
  print("People: 100");
}
}