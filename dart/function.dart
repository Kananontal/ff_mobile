import 'dart:ffi';

void main(){
  callWeb("Google", port: "443" , protocol: "HTTPS");
}
 //var count = callColor("Yellow");
 //print(count);

 void callWeb(String web,{String protocol = "HTTP",String port = "80"}) => print("$web $port $protocol");


int callColor([String newColor = "PINK"]){
  List<dynamic> colors = ["RED","BLUE","GREEN","BLACK"];

  colors.add(newColor);

  for(var i in colors){
    print(i);
  }
  return colors.length;
}
String callGen(int year){
  print(year);

 /* if(year >= 1996){
 //   print("GEN Z");
 // }else{
 //   print("GEN Y");
  } */

// เช็คเงื่อนไข       ถ้าเป็น TRUE         ถ้าเป็น FALSE
 // (year >= 1996) ? print("GEN Z") : print("GEN Y"); 
var gen = (year >= 1996) ? "GEN Z" : "GEN Y"; 
  return gen;
}
