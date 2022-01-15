import 'package:flutter/material.dart';
import 'package:trends_app/models/user_model.dart';

class AuthorsWidget extends StatelessWidget {
  userModel usermodel;
  AuthorsWidget(this.usermodel);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children:[
          Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(usermodel.userImg),
              ),
              SizedBox(height: 15,),
              Text(usermodel.userName,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ]

        ),
      ),
    );
  }
}
