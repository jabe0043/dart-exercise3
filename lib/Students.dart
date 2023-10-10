

class Students{
  List<Map<String, dynamic>>? people;

  // constructor accepts a list of maps with string,string and assigns it in member field: people. 
  Students(List<Map<String, dynamic>> studentList){
  people = studentList;
  // print(people);
  }


  //sort list by specific key: first,last,email
  sort(String field){
    print("");
    print("________ SORT METHOD ________");
    people?.sort((a, b) => a[field]?.compareTo(b[field]!) ?? 0);
    print(people);
    }

  //loop and print each person in the list
  output(){
    print("");
    print("________ OUTPUT METHOD ________");
    for (Map person in people ?? []){
      print(person);
    }
  }

  //add a person to the list 
  plus(Map<String, String> person ){
    print("");
    print("________ PLUS METHOD ________");
    people?.insert(0, person);
    print(people);
  }

  //remove a person from the list
  remove(String field){
    print(""); 
    print("________ REMOVE METHOD ________");
    people?.removeWhere((person)=>person.containsValue(field)); //if people list not null then go through each map and find the item containing the value "field".
    print(people);
  }
}
