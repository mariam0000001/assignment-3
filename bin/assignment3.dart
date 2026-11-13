import 'dart:io';

void main() {

 //print(getMin([5,8,4,2,6]));
 //print(getSecondSmallest( [1,9,0,5,4,2]) );
 //containsValue([8,0,1,5] , 4);
// print(CalculateEven([1,4,2,5,-1,8]));
// assignGrades([40,55,70,58]);
// analyzeScores([8,5,1,3]);
//   reverseArray([1,2,3,4,5,6,7,8,9,10]);
//getDistinctNumbers([1,2,3,2,1,3,4,5,2,6]);
  //CountGeneral([1,2,3,1,3,6]);

  //print(SelectionSort([1,0,3,6,2,5]));

}

//question 1
int getMin(List<int> list){
  int min = list[0];

  for(int i=1;i<list.length;i++){
    if (list[i] < min){
      min = list[i];
    }
  }

  return min;
}

//question 2 --> failed attempt
// int getSecondSmallest(List<int> list){
//   int min1 = list[0];
//   int min2 ;
//
//   for(int i=1;i<list.length;i++){
//     if (list[i] < min1){
//       min2 = min1;
//       min1 = list[i];
//     }
//     else if( (min2 == null || list[i]<min2) && list[i]>min1){
//       min2 = list[i];
//     }
//   }
//
//   return min2;
// }

//question 2 final //assuming no duplicates
int getSecondSmallest(List<int> list){
  int min1 = getMin(list);
  list.remove(min1);
  int min2 = getMin(list);
  return min2;
}

//question 3
void containsValue(List<int> list , int key){
  String isFound = "no";
  for(int i=0;i<list.length;i++){
    if(list[i] == key){
      isFound="yes";
      break;
    }
  }
  print(isFound);
}

//question 4
int CalculateEven(List<int> list){
  int sum = 0;
  for(int i=0;i<list.length;i++){
    if(list[i]%2== 0){
      sum+=list[i];
    }
  }
  return sum;
}

//question 5
int getMax(List<int> list){
  int max = list[0];

  for(int i=1;i<list.length;i++){
    if (list[i] > max){
      max = list[i];
    }
  }

  return max;
}
void assignGrades(List<int> list){
  int bestS = getMax(list);

  for(int i=1;i<list.length+1;i++){
    int curr = list[i-1];
    if(curr >= bestS - 10){
      print("student $i score is $curr and grade is A");
    }
    else if(curr >= bestS - 20){
      print("student $i score is $curr and grade is B");
    }
    else if(curr >= bestS - 30){
      print("student $i score is $curr and grade is C");
    }
    else if(curr >= bestS - 40){
      print("student $i score is $curr and grade is D");
    }
  }

}

//question 6
void  analyzeScores(List<int> list){
  int sum = 0;
  for(int i=0;i<list.length;i++){
    sum+=list[i];
  }
  int avg = sum~/list.length;
  int above = 0;
  int below = 0;
  int equal = 0;
  for(int i=0;i<list.length;i++){
    if(list[i] > avg){
      above++;
    }
    else if(list[i]<avg){
      below++;
    }
    else{
      equal++;
    }
  }
  print("above average $above");
  print("below average $below");
  print("equal average $equal");

}

//question 7
void reverseArray(List<int> list){
  for(int i = list.length-1; i>=0 ;i--){
    stdout.write(list[i]);
  }
}


//question 8
bool containValue(List<int> list , int key){
  bool isFound = false;
  for(int i=0;i<list.length;i++){
    if(list[i] == key){
      isFound=true;
      break;
    }
  }
  return isFound;
}

void getDistinctNumbers(List<int> list){
  List<int> distinct = [];
  for(int i = 0; i<list.length ;i++){
    if(!containValue(distinct, list[i] )){
      distinct.add(list[i]);
    }
  }
  int count = distinct.length;
  print("The number of distinct number is $count");
  print("the ditinct numbers are: $distinct");

}

//question 9
int countOcc(List<int> list , key){
  int count = 0;
  for(int i = 0; i<list.length ;i++){
    if(list[i] == key){
      count++;
    }
  }
  return count;
}
void CountGeneral(List<int> list){
  List<int> numbers = [];
  for(int i = 0; i<list.length ;i++){
    if(!containValue(numbers,list[i])){
      int count = countOcc(list , list[i]);
      int item = list[i];
      print("$item --> $count");
      numbers.add(list[i]);
    }

  }
}

//question 10
List<int> SelectionSort(List<int> list){

  for(int i = 0; i<list.length-1 ;i++){
    int min = list[i];
    for(int j = i+1;j<list.length;j++){
      if(list[j]<min){
       min = list[j];
      }
    }
    list.remove(min);
    list.insert(i, min);
  }
  return list;
}