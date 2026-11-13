import 'dart:io';
void main() {


  reverseArray([1,2,3,4,5,6,7,8,9,10]);


}

//question 7
void reverseArray(List<int> list){
  for(int i = list.length-1; i>=0 ;i--){
    stdout.write("${list[i]} ");
  }
}