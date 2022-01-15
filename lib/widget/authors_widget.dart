import 'package:flutter/material.dart';
import 'package:trends_app/models/post_model.dart';

class AuthorsWidget extends StatelessWidget {
  postModel postmodel;
  AuthorsWidget(this.postmodel);
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
      Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(postmodel.userImg),
          ),
          Text(postmodel.userName,
            style: TextStyle(
              fontSize: 11,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    ]

    );
  }
}
