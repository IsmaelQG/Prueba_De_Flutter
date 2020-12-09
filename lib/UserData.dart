import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User{
  String name;

  User(this.name);
}

class UserCreator{
  List<User> users = [
    User('Edu'), User('Marta'), User('Manolo'), User('Ismael'), User('Laura'),
  ];

  User getUserByIndex(int index){
    return users[index];
  }

  Widget getUsers(){
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: users.length,
      itemBuilder: (context, index){
        return ListTile(
          tileColor: Colors.white,
          title: Text(users[index].name),
          onTap: (){
            Navigator.pushNamed(context, '/form/${users[index].name}');
          },
        );
      },
    );
  }
}