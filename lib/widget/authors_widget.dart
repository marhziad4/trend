import 'package:flutter/material.dart';
import 'package:trends_app/models/post_model.dart';

class AuthorsWidget extends StatelessWidget {
  postModel postmodel;
  AuthorsWidget(this.postmodel);
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
                backgroundImage: NetworkImage(postmodel.userImg),
              ),
              SizedBox(height: 15,),
              Text(postmodel.userName,
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
