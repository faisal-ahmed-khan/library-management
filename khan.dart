import 'dart:io';

List<String> list= ["biology","chemisrty","zoology","botany","calculus","probablity","computer design","analytic geometry"];
void main(){
  while(true){
  print("***--------------******");
  print('  *Library Management system*  ');
  var userinput = stdin.readLineSync();
  if (userinput=='1'){
    print("these books available in Library");
    viewbooks();
    
  }
  else if(userinput =='2'){
     lendbook();
    
  }
  else if (userinput=='3'){
    print(addbook(viewbooks()));
  }
  else{
    break;
  }

}
}

viewbooks(){
  for (var element in list){
  print(element);
  
  }
}
dynamic lendbook(){
  var userinputt = stdin.readLineSync();
  bool found =list.contains(userinputt) ;
  if (found){
    list.remove(userinputt);
    // return userinputt;
  }
  else {
     print("book is not available");
  }
  return userinputt;


  }

  dynamic addbook(dynamic iteration){
    print("********return the book********");
    dynamic stdinput = stdin.readLineSync();
    if(stdinput!=iteration){
      list.add(stdinput);
      print("you returned the  book");
    }
    else{
      // print("you are submitting the wrong book  ");
    }
    

  }